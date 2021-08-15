# read a .sv file and split it into multiple files
in_path = './chisel/Matcher.sv'
out_path = './src'

fin = open(in_path, 'r')

for line in fin.readlines():
    if line.startswith('module'):
        current_module = line.strip().split(' ')[-1][:-1]
        gin = open(out_path + '/%s.sv' % current_module, 'w')
        print("start generating module " + current_module)
        gin.write(line)
    elif line.startswith('endmodule'):
        gin.write(line)
        gin.close()
    else:
        gin.write(line)

fin.close()
