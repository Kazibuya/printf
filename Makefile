# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: namichel <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/13 01:05:00 by namichel          #+#    #+#              #
#    Updated: 2024/11/13 20:29:31 by namichel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


SRCS		:= pf_hexa.c \
				pf_memcpy.c \
				pf_putstr.c \
				pf_substr.c \
				pf_hexa_p.c \
				pf_putchar.c \
				pf_strchr.c \
				ft_printf.c \
				pf_itoa.c \
				pf_putchar_fd.c \
				pf_strdup.c \
				pf_itoa_u.c \
				pf_putpercent.c \
				pf_strlen.c

OBJS		:=	$(SRCS:.c=.o)

CC			:= gcc

RM			:= rm -f

CFLAGS		:= -Wall -Wextra -Werror

NAME		:= libftprintf.a

all:	$(NAME)

$(NAME):	$(OBJS)
				ar rcs $(NAME) $(OBJS)
				ranlib $(NAME)

clean:
				$(RM) $(OBJS)

fclean:		clean
				$(RM) $(NAME)

re:			fclean $(NAME)

.PHONY:		all clean fclean re bonus

