function! QUINE()
	execute '%s/%/_P_/g'
	execute "%s/'/_Q_/g"
	execute '%s/\n/_N_/g'
	execute '%s/_N_/%1$c/g'
	execute '%s/_Q_/%2$c/g'
	execute '%s/_P_/%3$c/g'
	execute '%s/mov r12,5/mov r12,$5%d/g'
execute 's/s db %2$c%2$c/s db %2$c%5$s%2$c/'
endfunction
