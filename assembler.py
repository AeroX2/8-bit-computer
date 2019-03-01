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

    'cmp a a': 0x20,
    'cmp a c': 0x21,
    'cmp a d': 0x22,
    'cmp c c': 0x23,
    'cmp c a': 0x24,
    #'cmp c d': 0x25,
    'cmp d d': 0x26,
    'cmp d a': 0x27,
    #'cmp d c': 0x28,

    'jmpa {label}':     0x30, 
    'jmpa = {label}':   0x31, 
    'jmpa != {label}':  0x32, 
    'jmpa <= {label}':  0x33, 
    'jmpa < {label}':   0x34, 
    'jmpa > {label}':   0x35, 
    'jmpa >= {label}':  0x36, 
    'jmpa .<= {label}': 0x37, 
    'jmpa .< {label}':  0x38, 
    'jmpa .> {label}':  0x39, 
    'jmpa .>= {label}': 0x3a,  
    
    'jmpr {label}':     0x40, 
    'jmpr = {label}':   0x41, 
    'jmpr != {label}':  0x42, 
    'jmpr <= {label}':  0x43, 
    'jmpr < {label}':   0x44, 
    'jmpr > {label}':   0x45, 
    'jmpr >= {label}':  0x46, 
    'jmpr .<= {label}': 0x47, 
    'jmpr .< {label}':  0x48, 
    'jmpr .> {label}':  0x49, 
    'jmpr .>= {label}': 0x4a, 

    'opp 0':   0x50,
    'opp 1':   0x51,
    'opp -1':  0x52,
    'opp a':   0x53,
    'opp b':   0x54,
    'opp !a':  0x55,
    'opp !b':  0x56,
    'opp -a':  0x57,
    'opp -b':  0x58,
    'opp a+1': 0x59,
    'opp b+1': 0x5a,
    'opp a-1': 0x5b,
    'opp b-1': 0x5c,
    'opp a+b': 0x5d,
    'opp a-b': 0x5e,
    'opp b-a': 0x5f,

    'opp a&b':  0x60,
    'opp a|b':  0x61,
    'opp a.+b': 0x62,
    'opp a>>b': 0x63,
    'opp a<<b': 0x64,

    'load rom a {number}': 0x70,
    'load rom c {number}': 0x71,
    'load rom d {number}': 0x72,
    'load ram a':          0x73,
    'load ram c':          0x74,
    'load ram d':          0x75,

    'save a ram': 0x80,
    'save c ram': 0x81,
    'save d ram': 0x82,
    'save a mar': 0x83,
    'save c mar': 0x84,
    'save d mar': 0x85,

    'in a': 0x90,
    'in c': 0x91,
    'in d': 0x92,

    'out a': 0xa0,
    'out c': 0xa1,
    'out d': 0xa2,
}

translation_stage_two = list(filter(lambda x: '{label}' in x or
                                    '{number}' in x, 
                                    translation))

def opp_to_hex(line):
    global offset

    line = line.strip()
    if line in translation:
        offset += 1
        return [translation[line]]

    for instruction in translation_stage_two:
        match_whole_ins = '^'+instruction+'$'
        ins_temp = match_whole_ins.replace('{label}','([^ ]+)')
        match = re.match(ins_temp, line)
        if (match is not None):
            #Instructions with labels are 3 bytes
            offset += 3
            return [translation[instruction], *match.groups()]

        ins_temp = match_whole_ins.replace('{number}','([0-9]+)')
        match = re.match(ins_temp, line)
        if (match is not None):
            #Instructions with numbers are 2 bytes
            offset += 2
            return [translation[instruction], *[int(x) for x in match.groups()]]
    return None 

def parse(input_file, output_file):
    final = []
    labels = {}
    global offset
    offset = 0

    for ln,line in enumerate(input_file):
        variables = line.split()
        opp = variables[0]
        opp_args = ' '.join(variables[1:])

        label_match = re.match(':(.+)', opp)
        if (label_match is not None):
            labels[label_match.group(1)] = offset
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
            
    #print(final)
    file_output = []
    for ins in final:
        if isinstance(ins, str):
            if ins not in labels:
                print("Label %s has not been defined" % (ins))
                return

            ins = labels[ins]
            file_output.append('%02x' % (ins >> 4*2))
            file_output.append('%02x' % (ins & 0xFF))
        else:
            file_output.append('%02x' % ins)
    #print(file_output)

    output_file.write("v2.0 raw\n")
    output_file.write(' '.join(file_output))
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
import sys
if (len(sys.argv) > 1):
    args = parser.parse_args()
    input_file = args.input
    output_file = args.output
else:
    import tkinter as tk
    from tkinter import filedialog

    root = tk.Tk()
    root.withdraw()

    filename = filedialog.askopenfilename()
    input_file = open(filename, 'r')
    output_file = None

if (output_file is None):
    output_file = open(pathlib.Path(input_file.name).stem+'.o','w')

parse(input_file, output_file)
