# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cormund <cormund@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/08/16 11:31:00 by cormund           #+#    #+#              #
#    Updated: 2019/08/16 17:04:30 by cormund          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME := cormund.filler
LIBFT := libft.a
HEADERS := filler.h
CC := gcc
CFLAGS := -Wall -Wextra -Werror
REMOVE := /bin/rm -rf
DIR_BIN := bin/
DIR_INCLUDE := -I libft/include/
DIR_LIBFT := libft/
DIR_SRC := src/

vpath %.c $(DIR_SRC)
vpath %.o $(DIR_BIN)
vpath %.h $(DIR_INCLUDE)

SRC :=	filler.c\
			sort.c\
			heat_map.c\
			read_board.c

OBJ := $(SRC:.c=.o)

all:
	$(CC) -o $(NAME) $(CFLAGS) $(addprefix $(DIR_SRC), $(SRC)) $(DIR_INCLUDE) $(DIR_LIBFT)$(LIBFT)

clean:
	$(REMOVE) $(OBJ)

fclean: clean
	$(REMOVE) $(NAME)

re: fclean all