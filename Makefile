# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: csellier <csellier@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/05/13 16:53:06 by csellier          #+#    #+#              #
#    Updated: 2017/03/15 16:35:00 by csellier         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = 42sh

FLAGS = -g -Wall -Wextra -Werror

SRC = main.c error.c static.c  get.c set.c affich.c ft_free.c treat.c xcv.c\
	pipe.c home_end.c shift.c control.c delete.c is.c histo.c mini.c\
	m_builtins.c m_isabuiltin.c m_setenv.c m_error.c cd.c m_env.c\
	m_init_env.c m_unsetenv.c ft_signal.c list2str.c arbre.c\
	missing_quote.c quotes.c quote_priority.c static2.c\
	copy_lst.c redirections.c treat_red.c specialchar.c\
	treat_red2.c suppr_quote.c heredoc.c free_main.c\
	tool.c is_operande.c ft_signal2.c redir.c completion.c display_complete.c\
	reverse_i_search.c display_reverse.c\
	echo.c tilde.c cd_tool.c cd_tool2.c treat_pwd.c binary_tree_tool.c\
	printlist.c history.c history_tools.c history_tool2.c history_tool3.c\
	bang.c specialchar2.c

OBJ = $(SRC:.c=.o)

all : $(NAME)

$(NAME) : $(OBJ)
	make -C libft/
	gcc -o $(NAME) $(FLAGS) $(OBJ) -L libft/ -lft -ltermcap

%.o: %.c ft_21sh.h
	gcc $(FLAGS) -I. -c $<

clean :
	make -C libft/ clean
	rm -f $(OBJ)

fclean:clean
	make -C libft/ fclean
	rm -rf $(NAME)

re: fclean all
