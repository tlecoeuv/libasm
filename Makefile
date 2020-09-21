# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: user42 <user42@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/09/17 15:00:10 by user42            #+#    #+#              #
#    Updated: 2020/09/21 16:32:24 by user42           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME =			libasm.a

SRCS =			srcs/ft_strlen.s \
						srcs/ft_strcmp.s \
						srcs/ft_read.s \
						srcs/ft_strcpy.s \
						srcs/ft_write.s \
						srcs/ft_strdup.s\

OBJS =			$(SRCS:.s=.o)

NASM = 			nasm

NASM_FLAGS =		-felf64

CC =			clang

CFLAGS =		-Wall -Werror -Wextra

EXEC = test

LIBRARY =		-L . -lasm -o

%.o:			%.s
			$(NASM) $(NASM_FLAGS) $<

all:			$(NAME)

$(NAME):		$(OBJS)
				ar rc $(NAME) $(OBJS)

test:			$(NAME)
					$(CC) srcs/main.c $(LIBRARY) $(EXEC)
					./$(EXEC)

clean:
				rm -rf $(OBJS) $(OBJS_BONUS)

fclean: 		clean
				rm -rf $(NAME) $(EXEC)

re:					fclean all

.PHONY: 		fclean clean all re
