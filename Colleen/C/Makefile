ifndef OUTPUT
.SILENT:
endif

NAME	=	Colleen
ARGS	=	
SRCS	=	Colleen.c
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
