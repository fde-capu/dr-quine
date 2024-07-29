ifndef OUTPUT
.SILENT:
endif

NAME	=	Sully
SRCS	=	Sully.c
HEAD	=	Makefile
SHELL	=	/bin/sh
CC		=	clang
CCFLAGS	=	-Wall -Werror -Wextra -Wfatal-errors
OBJS	=	$(SRCS:.c=.o)
VAL		=	valgrind
VALFLAG	=	-s --tool=memcheck \
			--leak-check=full \
			--show-leak-kinds=all \
			--track-origins=yes \
			--show-reachable=yes \
			--track-origins=yes
all:		$(NAME)
$(NAME):	$(OBJS)
	$(CC) $(CCFLAGS) $(OBJS) -o $(NAME)
$(OBJS):	%.o : %.c $(HEAD)
	$(CC) $(CCFLAGS) -o $@ -c $<
clean:
	-rm -f $(OBJS)
fclean:		clean
	-rm -f $(NAME)
re:			fclean all
rt:			re t
vf:			all
	$(VAL) $(VALFLAG) ./$(NAME)
t:			all
	./$(NAME)
d:			all
	@echo "diff:"
	./Sully
#	diff Sully.c Grace_kid.c && echo "[ OK ]" || echo "[ KO ]"
v:			all
	$(VAL) ./$(NAME)
rv:			re v
rvf:		re vf
td:			t d
rtd:		re t d
rd:			re d
g:			re
	gdb ./$(NAME)
