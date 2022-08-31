SRC = $(wildcard *.c)

CC = gcc

FLAGS = -Wall -Wextra -Werror

NAME = s21_cat

OBJ = $(patsubst %.c, %.o, $(SRC))

$(NAME) : $(OBJ)
				$(CC) $(OBJ) -o $(NAME)

%.o : %.c 
	$(CC) -c $< -o $@

clean :
			rm -f $(NAME) *.o

style: $(SRC)
	python3 cpplint.py --extensions=c $(SRC)

cppckeck :
	cppcheck --enable=all --suppress=missingIncludeSystem $(SRC)
