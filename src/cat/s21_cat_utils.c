#include "s21_cat.h"

void s21_putstr(char *str, int fd) {
if (str == s21_NULL)
  write(fd, "s21_NULL", 4);
else
  write(fd, str, s21_strlen(str));
}

void s21_exit(char *str, int n) {
  s21_putstr(str, 2);
  s21_putstr("\n", 2);
  _exit(n);
}
