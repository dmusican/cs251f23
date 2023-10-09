# Translate a greet program into....
inpfile = open('hello.greet', 'r')
outfile = open('hello.bash', 'w')

for line in inpfile:
    (command, number) = line.split()
    outfile.write('for i in {1..' + number + '}\n')
