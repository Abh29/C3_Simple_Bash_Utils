#ifndef S21_CAT
# define S21_CAT

#include "s21_string.h"

typedef struct flags {
  char **files;
  char flag;
  char flag_bb;
  char flag_A;
  char flag_b;
  char flag_e;
  char flag_E;
  char flag_n;
  char flag_s;
  char flag_t;
  char flag_T;
  char flag_u;
  char flag_v;
  char help;
  char version;

} t_cat;

void    s21_putstr(char *str, int fd);
void    s21_exit(char *str, int n);

#endif