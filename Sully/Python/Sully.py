#!/bin/python3
#
# X
#
import os
i = 5
n = chr(0x0A)
q = chr(0x27)
t = chr(0x09)
s = '#!/bin/python3{n}#{n}# X{n}#{n}import os{n}i = I{n}n = chr(0x0A){n}q = chr(0x27){n}t = chr(0x09){n}s = {q}S{q}{n}i -= 1{n}if i < 0:{n}{t}quit(){n}with open(f{q}Sully_{i}.py{q}, {q}w{q}) as file:{n}{t}file.write(s.format(n = n, q = q, t = t, i = {q}{i}{q}).replace({q}S{q}, s, 1).replace({q}I{q}, str(i), 1)){n}os.system(f{q}chmod +x Sully_{i}.py{q}){n}os.system(f{q}./Sully_{i}.py{q}){n}'
i -= 1
if i < 0:
	quit()
with open(f'Sully_{i}.py', 'w') as file:
	file.write(s.format(n = n, q = q, t = t, i = '{i}').replace('S', s, 1).replace('I', str(i), 1))
os.system(f'chmod +x Sully_{i}.py')
os.system(f'./Sully_{i}.py')
