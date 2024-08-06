#!/bin/python3
#
# X
#
n = chr(0x0A)
q = chr(0x27)
t = chr(0x09)
s = '#!/bin/python3{n}#{n}# X{n}#{n}n = chr(0x0A){n}q = chr(0x27){n}t = chr(0x09){n}s = {q}SS{q}{n}def main():{n}#{n}# X{n}#{n}{t}print(s.format(n = n, q = q, t = t).replace({q}SS{q}, s, 1)){n}{n}main();'
def main():
#
# X
#
	print(s.format(n = n, q = q, t = t).replace('SS', s, 1))

main();
