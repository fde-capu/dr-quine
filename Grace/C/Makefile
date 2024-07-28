ifndef OUTPUT
.SILENT:
endif

NAME	=	Grace
SRCS	=	Grace.c
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
			--show-reachable=yes
all:		$(NAME)
$(NAME):	$(OBJS)
	$(CC) $(CCFLAGS) $(OBJS) -o $(NAME)
$(OBJS):	%.o : %.c $(HEAD)
	$(CC) $(CCFLAGS) -o $@ -c $<
clean:
	-rm -f $(OBJS)
fclean:		clean
	-rm -f $(NAME)
	-rm -f Grace_kid.c
re:			fclean all
rt:			re t
vf:			all
	$(VAL) $(VALFLAG) ./$(NAME)
t:			all
	@echo "execution:"
	./$(NAME)
d:
	@echo "diff:"
	./$(NAME) > tmp
	diff $(SRCS) tmp && echo "[ OK ]" || echo "[ KO ]"
	@rm tmp
v:			all
	$(VAL) ./$(NAME)
rv:			re v
rvf:		re vf
td:			t d
rtd:		re t d
rd:			re d
