#!/bin/python3
#
# X
#
n = chr(0x0A)
q = chr(0x27)
t = chr(0x09)
s = '#!/bin/python3{n}#{n}# X{n}#{n}n = chr(0x0A){n}q = chr(0x27){n}t = chr(0x09){n}s = {q}S{q}{n}def return1():{n}{t}return 1{n}def main():{n}#{n}# X{n}#{n}{t}print(s.format(n = n, q = q, t = t).replace({q}S{q}, s, return1())){n}{n}main();'
def return1():
	return 1
def main():
#
# X
#
	print(s.format(n = n, q = q, t = t).replace('S', s, return1()))

main();
