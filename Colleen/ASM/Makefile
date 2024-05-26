ifndef OUTPUT
.SILENT:
endif

NAME	=	Colleen
ARGS	=	
SRCS	=	Colleen.asm
HEAD	=	Makefile
SHELL	=	/bin/sh
ASM		=	nasm -f elf64
LD		= ld
OBJS	=	Colleen.o
VAL		=	valgrind
VALFLAG	=	--tool=memcheck \
			--leak-check=full \
			--show-leak-kinds=all \
			--track-origins=yes \
			--show-reachable=yes
all:		$(NAME)
$(NAME):	$(OBJS)
	$(LD) -o $(NAME) $(OBJS)
$(OBJS):	%.o : %.asm $(HEAD)
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
	./$(NAME) $(ARGS)
v:			all
	$(VAL) ./$(NAME) $(ARGS)
rv:			re v
rvf:		re vf
