SRCS =main.c
RM = rm -f
GCC = gcc #-Wall -Wextra -Werror
NAME = so_long

all:			$(SRCS) $(NAME)

%.o: %.c
	$(CC) -Wall -Wextra -Werror -Imlx -c $< -o $@

$(NAME): $(SRCS)
	$(CC) $(SRCS) -Lmlx -lmlx -framework OpenGL -framework AppKit -o $(NAME)

clean:
	$(RM) $(NAME)

fclean:			clean
	@echo "cleaning..."

re:				fclean $(NAME)
.PHONY:			all clean fclean re