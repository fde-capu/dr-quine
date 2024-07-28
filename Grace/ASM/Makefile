ifndef OUTPUT
.SILENT:
endif

NAME	=	Grace
SRCS	=	Grace.asm
HEAD	=	Makefile
SHELL	=	/bin/sh
ASM		=	nasm -f elf64 -Wall -Werror -g
LD		= ld
LDLIB	= -m elf_x86_64 -lc --dynamic-linker /lib64/ld-linux-x86-64.so.2
OBJS	=	Grace.o
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
$(OBJS):	%.o : %.asm $(HEAD) $(SRC)
	$(ASM) $<
clean:
	-rm -f $(OBJS)
fclean:		clean
	-rm -f $(NAME)
re:			fclean all
rt:			re t
vf:			all
	$(VAL) $(VALFLAG) ./$(NAME) $(ARGS)
t:			all
	./$(NAME)
d:			all
	@echo "diff:"
	./Grace
	diff Grace.asm Grace_kid.asm && echo "[ OK ]" || echo "[ KO ]"
v:			all
	$(VAL) ./$(NAME)
rg:			re g
rv:			re v
rvf:		re vf
td:			t d
rtd:		re t d
rd:			re d
g:			re
	gdb ./$(NAME)
