#!/bin/python3
#
# X
#
import os
n = chr(0x0A)
q = chr(0x27)
t = chr(0x09)
FT='''
def main():
	s = '#!/bin/python3{n}#{n}# X{n}#{n}import os{n}n = chr(0x0A){n}q = chr(0x27){n}t = chr(0x09){n}FT={q}{q}{q}{n}def main():{n}{t}s = {q}S{q}{n}{t}with open({q}Grace_kid.py{q}, {q}w{q}) as file:{n}{t}{t}file.write(s.format(n = n, q = q, t = t).replace({q}S{q}, s, 1)){n}main(){n}{q}{q}{q}{n}os.system({q}chmod +x Grace_kid.py{q}){n}exec(FT){n}'
	with open('Grace_kid.py', 'w') as file:
		file.write(s.format(n = n, q = q, t = t).replace('S', s, 1))
main()
'''
os.system('chmod +x Grace_kid.py')
exec(FT)
