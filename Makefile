# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fraqioui <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/02 13:28:25 by fraqioui          #+#    #+#              #
#    Updated: 2022/11/05 10:03:41 by fraqioui         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME= libftprintf.a

CC= cc
FLAGS=  -Wall -Wextra -Werror
AR= ar -cr

SRCS= 	start \
		string \
		number \
		hex

OBJ= ${SRCS:=.o}

.PHONY: all clean fclean re

all: ${NAME}

${NAME}: ${OBJ}
	${AR} ${NAME} ${OBJ}

%.o: %.c ft_printf.h
	${CC} ${FLAGS} -c $< -o $@

clean:
	rm -rf ${OBJ}
fclean: clean	
	rm -rf ${NAME}
re: fclean all
