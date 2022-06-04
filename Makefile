# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: caalbert <caalbert@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/03 21:22:06 by caalbert          #+#    #+#              #
#    Updated: 2022/06/03 21:49:00 by caalbert         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc

NAME = libft.a

CFLAGS = -Wall -Werror -Wextra

SRCS = ft_isdigit.c	/
	ft_isalnum.c	/
	ft_isascii.c	/
	ft_isprint.c	/
	ft_strlen.c		/
	ft_memset.c		/
	ft_bzero.c		/
	ft_memcpy.c		/
	ft_memmove.c	/
	ft_strlcpy.c	/
	ft_strlcat.c	/
	ft_toupper.c	/
	ft_tolower.c	/
	ft_strchr.c		/
	ft_strrchr.c	/
	ft_strncmp.c	/
	ft_memchr.c		/
	ft_memcmp.c		/
	ft_strnstr.c	/
	ft_atoi.c

	OBJS = $(SRCS:.c=.o)
	
	all: $(NAME)

	$(NAME): $(OBJS)
		ar -rcs $(NAME) $(OBJS)
		
	$(OBJS): $(addorefix src/, $(RSCS))
		$(CC) -I . -c $(CFLAGS) $(addprefix src/, $(SRCS)
		
	.PHONY: all clean fcleann re
	