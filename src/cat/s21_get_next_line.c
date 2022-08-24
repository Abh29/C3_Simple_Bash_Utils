#include "s21_string.h"

char *s21_get_next_line(int fd) {
  char *tmp_1;
  char *result;
  static char *token = s21_NULL;
  char *tmp_ptr;
  int size_buff;
  char buff[1024];

  result = s21_NULL;
  if (token != s21_NULL) {
    if ((tmp_ptr = s21_strchr(token, '\n')) != s21_NULL) {
      *tmp_ptr = '\0';
      result = s21_strdup(token);
      tmp_ptr++;
      token = s21_NULL;
      token = s21_strdup(tmp_ptr);
      return (result);
    } else {
      result = s21_strdup(token);
    }
  }
  while (1) {
  size_buff = read(fd, buff, 1023);
  if (size_buff <= 0)
    break;
  buff[size_buff] = '\0';
  if ((tmp_ptr = s21_strchr(buff, '\n')) != s21_NULL) {
    *tmp_ptr = '\0';
    if (result == s21_NULL) {
      result = s21_strdup(buff);
    } else {
      tmp_1 = result;
      result = s21_strjoin(tmp_1, buff);
      free(tmp_1);
    }
    tmp_ptr++;
    token = s21_NULL;
    token = s21_strdup(tmp_ptr);
    return (result);
  } else {
    if (result != s21_NULL) {
      tmp_1 = result;
      result = s21_strjoin(result, buff);
      free(tmp_1);
    } else {
      result = s21_strdup(buff);
    }
  }
  }
  return (s21_NULL);
}
