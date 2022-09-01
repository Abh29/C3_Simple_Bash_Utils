#include "../s21_cat.h"

void print_str(char *str, t_cat *flags) {

  while (*str) {
    if (check_flag(flags, 'T') && *str == '\t')
      printf("^I");
    else if (check_flag(flags, 'v'))
      printf("%s", non_print[((*str )+ 256) % 256]);
    else 
      printf("%c", *str);
    str++;
  }
}

void  print_help(void) {
  int fd;
  char  *line;

  if ((fd = open("man.txt", O_RDONLY)) < 0) {
    printf("s21_cat - concatenate files and print on the standard output\n");
    exit(EXIT_SUCCESS);
  }
  while ((line = ft_get_next_line(fd)) != s21_NULL) {
    printf("%s\n", line);
    free(line);
  }
  close(fd);
  exit(EXIT_SUCCESS);
}

void  print_version(void) {
  printf("s21_cat (school21 Unix Utility) 1.0\n");
  printf("Written by Emmitt Anjelica school21.\n");
  exit(EXIT_SUCCESS);
}

void  print_file(t_cat *flags, char *file_path){

  int   fd;
  char  *line, *next;
  int   c_empty;

  if (flags == s21_NULL || file_path == s21_NULL)
    return ;
  if (s21_strcmp(file_path, "-") == 0 || s21_strcmp(file_path, "--") == 0)
    fd = 1;
  else if ((fd = open(file_path, O_RDONLY)) < 0) {
    print_error("cat: ", 1, 1);
    return ;
  }
  
  c_empty = 0;
  line = ft_get_next_line(fd);
  while (line) {
      (next = ft_get_next_line(fd));
      if (check_flag(flags, 's')) {
        if (*line == '\0')
          c_empty++;
        else
          c_empty = 0; }
      if (c_empty >= 2) {
        free(line);
        line =  next;
        continue;
      }
      if (check_flag(flags, 'b') && *line != '\0')
        printf("%6d\t", flags->c_b++);
      else if (check_flag(flags, 'n') && check_flag(flags, 'b') == 0 && next)
          printf("%6d\t", flags->c_n++);
      print_str(line, flags);
      free(line);
      if (next)
      {
        if (check_flag(flags, 'E'))
          printf("$");
        printf("\n");
      }
      line = next;
  }
  if (fd != 1)
    close(fd);
}

int print_files(t_cat *flags) {
  int i;

  if (check_flag(flags, F_HELP))
    print_help();
  if (check_flag(flags, F_VERSION))
    print_version();
  if (flags->files[0] == s21_NULL)
    print_file(flags, "-");
  i = 0;
  while (flags->files[i] != s21_NULL)
    print_file(flags, flags->files[i++]);
  return 0;
}
