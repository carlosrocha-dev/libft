# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: caalbert <caalbert@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/02 10:10:19 by caalbert          #+#    #+#              #
#    Updated: 2023/02/02 10:10:53 by caalbert         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= libft.a
CC			= cc
CFLAGS		= -Wall -Wextra -Werror
RM			= rm -f
SRCS		=	src/*.c

OBJS		= $(SRCS:.c=.o)

all: 		$(NAME)

$(NAME): 	$(OBJS)
			ar -rcs $(NAME) $(OBJS)

clean:
			$(RM) $(OBJS)

fclean:		clean
			$(RM) $(NAME)

re:			fclean all

.PHONY:		all clean fclean re