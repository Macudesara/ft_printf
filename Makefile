# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mde-sara <mde-sara@student.42barcel>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/06/27 15:06:24 by mde-sara          #+#    #+#              #
#    Updated: 2023/09/29 11:44:21 by mde-sara         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME =		libftprintf.a
CC =		cc
FLAGS =		-Wall -Wextra -Werror
AR =		ar rcs

SOURCES = ft_printf_char.c ft_printf_str.c ft_printf_hexaptr.c ft_printf_i_d.c ft_printf_unsig.c ft_printf_hexalow.c ft_printf_hexaup.c protoprintf.c

OBJECTS = $(SOURCES:.c=.o)

DEPS = $(SOURCES:.c=.d)

all: $(NAME)

$(NAME): $(OBJECTS) Makefile
	$(AR) $(NAME) $(OBJECTS)

%.o: %.c
	$(CC) -c $(FLAGS) -I./ -I./Users/mde-sara/Desktop/ft_printf -MMD -MP -c $< -o $@

-include $(DEPS)

clean:
	rm -f $(OBJECTS) $(DEPS) $(NAME)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
