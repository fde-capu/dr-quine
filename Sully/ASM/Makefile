ifndef OUTPUT
.SILENT:
endif

NAME	=	Sully
SRCS	=	Sully.s
HEAD	=	Makefile
SHELL	=	/bin/sh
ASM		=	nasm -f elf64
LD		= ld
LDLIB	= -m elf_x86_64 -lc --dynamic-linker /lib64/ld-linux-x86-64.so.2
OBJS	=	Sully.o
VAL		=	valgrind
VALFLAG	=	--tool=memcheck \
			--leak-check=full \
			--show-leak-kinds=all \
			--track-origins=yes \
			--show-reachable=yes \
			--track-origins=yes
all:		$(NAME)
$(NAME):	$(OBJS)
	$(LD) -o $(NAME) $(OBJS) $(LDLIB)
$(OBJS):	%.o : %.s $(HEAD) $(SRC)
	$(ASM) $<
clean:
	-rm -f $(OBJS)
fclean:		clean
	-rm -f $(NAME)
	-rm -f Sully_*
re:			fclean all
vf:			all
	$(VAL) $(VALFLAG) ./$(NAME) $(ARGS)
t:			re
	./$(NAME)
d:			all
	./Sully
	-diff Sully.s Sully_4.s > diff_out
	-diff Sully_4.s Sully_3.s >> diff_out
	-diff Sully_3.s Sully_2.s >> diff_out
	-diff Sully_2.s Sully_1.s >> diff_out
	-diff Sully_1.s Sully_0.s >> diff_out
	diff diff_model diff_out && echo '[ OK ]' || echo '[ KO ]'
	-rm -f diff_out
v:			all
	$(VAL) ./$(NAME)
g:			re
	gdb ./$(NAME)
s:			re t
	cat ./Sully_kid.s
ifndef OUTPUT
.SILENT:
endif
