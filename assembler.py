import re
import pathlib
import argparse

def check_mov(args):
    r = re.match(r'([acd]) ([acd])', args)
    if (r is not None):
        return r.group(1) != r.group(2)

def check_load(args):
    r = re.match(r'ram [acd]', args)
    if (r is not None):
        return True
    r = re.match(r'rom [acd] .+', args)
    return r is not None

operations = {
    'nop': lambda x: x == '',
    'mov': check_mov,
    'jmpa': re.compile(r'((<=|<|=|>|>=) [acd])|(.+)').match,
    'jmpr': re.compile(r'((<=|<|=|>|>=) [acd])|(.+)').match,
    'opp': re.compile(r'').match,
    'load': check_load,
    'save': re.compile(r'[acd] (ram|mari)').match,
    'in': re.compile(r'[acd]').match,
    'out': re.compile(r'[acd]').match
}

translation = {
    'nop': 0x0,

    'mov a c': 0x10,
    'mov a d': 0x11,
    'mov c a': 0x12,
    'mov c d': 0x13,
    'mov d a': 0x14,
    'mov d c': 0x15,

    'jmpa {label}': 0x20, 
    'jmpa <= a {label}':    0x21, 
    'jmpa < a {label}':     0x22, 
    'jmpa = a {label}':     0x23, 
    'jmpa > a {label}':     0x24, 
    'jmpa >= a {label}':    0x25, 
    'jmpa <= c {label}':    0x26, 
    'jmpa < c {label}':     0x27, 
    'jmpa = c {label}':     0x28, 
    'jmpa > c {label}':     0x29, 
    'jmpa >= c {label}':    0x2a, 
    'jmpa <= d {label}':    0x2b, 
    'jmpa < d {label}':     0x2c, 
    'jmpa = d {label}':     0x2d, 
    'jmpa > d {label}':     0x2e, 
    'jmpa >= d {label}':    0x2f, 

    'jmpr {number}': 0x30, 
    'jmpr <= a {number}':    0x31, 
    'jmpr < a {number}':     0x32, 
    'jmpr = a {number}':     0x33, 
    'jmpr > a {number}':     0x34, 
    'jmpr >= a {number}':    0x35, 
    'jmpr <= c {number}':    0x36, 
    'jmpr < c {number}':     0x37, 
    'jmpr = c {number}':     0x38, 
    'jmpr > c {number}':     0x39, 
    'jmpr >= c {number}':    0x3a, 
    'jmpr <= d {number}':    0x3b, 
    'jmpr < d {number}':     0x3c, 
    'jmpr = d {number}':     0x3d, 
    'jmpr > d {number}':     0x3e, 
    'jmpr >= d {number}':    0x3f, 

    'opp 0':   0x40,
    'opp 1':   0x41,
    'opp -1':  0x42,
    'opp a':   0x43,
    'opp b':   0x44,
    'opp !a':  0x45,
    'opp !b':  0x46,
    'opp -a':  0x47,
    'opp -b':  0x48,
    'opp a+1': 0x49,
    'opp b+1': 0x4a,
    'opp a-1': 0x4b,
    'opp b-1': 0x4c,
    'opp a+b': 0x4d,
    'opp a-b': 0x4e,
    'opp b-a': 0x4f,

    'opp a&b':  0x50,
    'opp a|b':  0x51,
    'opp a.+b': 0x52,
    'opp a>>b': 0x53,
    'opp a<<b': 0x54,

    'load rom a {number}': 0x60,
    'load rom c {number}': 0x61,
    'load rom d {number}': 0x62,
    'load ram a':         0x63,
    'load ram c':         0x64,
    'load ram d':         0x65,

    'save a ram': 0x70,
    'save c ram': 0x71,
    'save d ram': 0x72,
    'save a mar': 0x73,
    'save c mar': 0x74,
    'save d mar': 0x75,

    'in a': 0x80,
    'in c': 0x81,
    'in d': 0x82,

    'out a': 0x90,
    'out c': 0x91,
    'out d': 0x92,
}

translation_stage_two = list(filter(lambda x: '{label}' in x or
                                    '{number}' in x, 
                                    translation))

def opp_to_hex(line):
    line = line.strip()
    if line in translation:
        return [translation[line]]

    for instruction in translation_stage_two:
        match_whole_ins = '^'+instruction+'$'
        ins_temp = match_whole_ins.replace('{label}','([^ ]+)')
        match = re.match(ins_temp, line)
        if (match is not None):
            return [translation[instruction], *match.groups()]

        ins_temp = match_whole_ins.replace('{number}','([0-9]+)')
        ins_temp = match_whole_ins.replace('{number}','([0-9]+)')
        match = re.match(ins_temp, line)
        if (match is not None):
            global offset
            offset += 1
            return [translation[instruction], *[int(x) for x in match.groups()]]
    return None 

final = []
labels = {}
offset = 0
def parse(input_file, output_file):
    global offset

    for ln,line in enumerate(input_file):
        variables = line.split()
        opp = variables[0]
        opp_args = ' '.join(variables[1:])

        label_match = re.match(':(.+)', opp)
        if (label_match is not None):
            labels[label_match.group(1)] = ln+1
            offset -= 1
        elif opp in operations:
            if not operations[opp](opp_args):
                print("%sLine %d is not valid" % (line, ln))
                return
            hex_op = opp_to_hex(line)
            if (hex_op is None):
                print("%sLine %d couldn't find matching instruction" % (line, ln))
                return
            final.extend(hex_op)

    #for x in final:
    #    if isinstance(x, int):
    #        print(hex(int(x)), end=' ')
    #    else:
    #        print(x, end=' ')
    #print()
			
    file_output = ''
    for ins in final:
        if isinstance(ins, str):
            if ins not in labels:
                print("Label %s has not been defined" % (ins))
                return
            ins = labels[ins] - offset
            offset += 1
        file_output += format(ins,'x') + ' '
    file_output = file_output.strip()

    output_file.write("v2.0 raw\n")
    output_file.write(file_output)
    output_file.write("\n")
    output_file.close()

    print("Successfully compiled")
    print("File written to %s" % output_file.name)

parser = argparse.ArgumentParser(description='Process some integers.')
parser.add_argument('input', 
                    type=argparse.FileType('r'), 
                    help='The assembly file to compile to machine level code')
parser.add_argument('--output', '-o',
                    type=argparse.FileType('wb'),
                    help='The machine level filename to write')

args = parser.parse_args()
input_file = args.input
output_file = args.output
if (output_file is None):
    output_file = open(pathlib.Path(input_file.name).stem+'.o','w')

parse(input_file, output_file)
