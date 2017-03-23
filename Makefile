#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: msymkany <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/12/04 11:05:45 by msymkany          #+#    #+#              #
#    Updated: 2016/12/19 15:43:02 by msymkany         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME = libft.a

CC = gcc
CFLAGS = -Wall -Wextra -Werror

LIBFT_I = ./libft.h
PRINTF_I = ./libftprintf.h
INCLUDES = -I $(LIBFT_I) -I $(PRINTF_I)

SOURCE = ft_isdigit.c \
            ft_isalnum.c \
            ft_isascii.c \
            ft_isprint.c \
            ft_toupper.c \
            ft_tolower.c \
            ft_isalpha.c \
            ft_isspace.c \
            ft_strdup.c \
            ft_atoi.c \
            ft_strlen.c \
            ft_putchar.c \
            ft_putstr.c \
            ft_putendl.c \
            ft_putnbr.c \
            ft_strcpy.c \
            ft_strncpy.c \
            ft_strcmp.c \
            ft_strncmp.c \
            ft_strcat.c \
            ft_strncat.c \
            ft_strchr.c \
            ft_strrchr.c \
            ft_strstr.c \
            ft_strnstr.c \
            ft_memset.c \
            ft_memcpy.c \
            ft_bzero.c \
            ft_memccpy.c \
            ft_memcmp.c \
            ft_memchr.c \
            ft_memmove.c \
            ft_strlcat.c \
            ft_memalloc.c \
            ft_strnew.c \
            ft_memdel.c \
            ft_strclr.c \
            ft_strdel.c \
            ft_striter.c \
            ft_striteri.c \
            ft_strmap.c \
            ft_strmapi.c \
            ft_strequ.c \
            ft_strnequ.c \
            ft_strsub.c \
            ft_strjoin.c \
            ft_trim.c \
            ft_strtrim.c \
            ft_putchar_fd.c \
            ft_putstr_fd.c \
            ft_putendl_fd.c \
            ft_putnbr_fd.c \
            ft_itoa.c \
            ft_w_c.c \
            ft_strsplit.c \
            ft_lstnew.c \
            ft_print_list.c \
            ft_lstdelone.c \
            ft_lstdel.c \
            ft_lstadd.c \
            ft_lstiter.c \
            ft_lstmap.c \
            get_next_line.c\
            ft_printf.c\
            manage_struct.c\
            arg_cast_conversion.c\
            convert_digit.c\
            convert_wchar.c\
            parce_it.c\
            print_it.c\
            print_order.c\
            put_txt.c\
            skip_flags.c\
            get_mod.c\
            print_char.c\
            print_str.c\

OBJECTS = $(SOURCE:.c=.o)

all: $(NAME)

$(NAME): $(OBJECTS)
	ar rc $(NAME) $(OBJECTS)
	ranlib $(NAME)

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $< $(INCLUDES)

clean:
	rm -rf $(OBJECTS)

fclean: clean
	rm -rf $(NAME)

re: fclean all