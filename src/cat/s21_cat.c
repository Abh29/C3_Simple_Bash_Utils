#include "s21_cat.h"

void ft_init_flags(t_cat *flags) {
  flags->flag = 0;
  flags->flag_bb = 0;
  flags->flag_A = 0;
  flags->flag_b = 0;
  flags->flag_e = 0;
  flags->flag_E = 0;
  flags->flag_n = 0;
  flags->flag_s = 0;
  flags->flag_t = 0;
  flags->flag_T = 0;
  flags->flag_u = 0;
  flags->flag_v = 0;
  flags->help = 0;
  flags->version = 0;
}

void print_str(char *str, t_cat *flags) {
  char *arr[256];

  arr[0] = "^@";
  arr[1] = "^A";
  arr[2] = "^B";
  arr[3] = "^C";
  arr[4] = "^D";
  arr[5] = "^E";
  arr[6] = "^F";
  arr[7] = "^G";
  arr[8] = "^H";
  arr[9] = "\t";
  arr[10] = "";
  arr[11] = "^K";
  arr[12] = "^L";
  arr[13] = "^M";
  arr[14] = "^N";
  arr[15] = "^O";
  arr[16] = "^P";
  arr[17] = "^Q";
  arr[18] = "^R";
  arr[19] = "^S";
  arr[20] = "^T";
  arr[21] = "^U";
  arr[22] = "^V";
  arr[23] = "^W";
  arr[24] = "^X";
  arr[25] = "^Y";
  arr[26] = "^Z";
  arr[27] = "^[";
  arr[28] = "^\\";
  arr[29] = "^]";
  arr[30] = "^^";
  arr[31] = "^_";
  arr[32] = " ";
  arr[33] = "!";
  arr[34] = "\\";
  arr[35] = "#";
  arr[36] = "$";
  arr[37] = "%";
  arr[38] = "&";
  arr[39] = "'";
  arr[40] = "(";
  arr[41] = ")";
  arr[42] = "*";
  arr[43] = "+";
  arr[44] = ",";
  arr[45] = "-";
  arr[46] = ".";
  arr[47] = "/";
  arr[48] = "0";
  arr[49] = "1";
  arr[50] = "2";
  arr[51] = "3";
  arr[52] = "4";
  arr[53] = "5";
  arr[54] = "6";
  arr[55] = "7";
  arr[56] = "8";
  arr[57] = "9";
  arr[58] = ":";
  arr[59] = ";";
  arr[60] = "<";
  arr[61] = "=";
  arr[62] = ">";
  arr[63] = "?";
  arr[64] = "@";
  arr[65] = "A";
  arr[66] = "B";
  arr[67] = "C";
  arr[68] = "D";
  arr[69] = "E";
  arr[70] = "F";
  arr[71] = "G";
  arr[72] = "H";
  arr[73] = "I";
  arr[74] = "J";
  arr[75] = "K";
  arr[76] = "L";
  arr[77] = "M";
  arr[78] = "N";
  arr[79] = "O";
  arr[80] = "P";
  arr[81] = "Q";
  arr[82] = "R";
  arr[83] = "S";
  arr[84] = "T";
  arr[85] = "U";
  arr[86] = "V";
  arr[87] = "W";
  arr[88] = "X";
  arr[89] = "Y";
  arr[90] = "Z";
  arr[91] = "[";
  arr[92] = "\\";
  arr[93] = "]";
  arr[94] = "^";
  arr[95] = "_";
  arr[96] = "`";
  arr[97] = "a";
  arr[98] = "b";
  arr[99] = "c";
  arr[100] = "d";
  arr[101] = "e";
  arr[102] = "f";
  arr[103] = "g";
  arr[104] = "h";
  arr[105] = "i";
  arr[106] = "j";
  arr[107] = "k";
  arr[108] = "l";
  arr[109] = "m";
  arr[110] = "n";
  arr[111] = "o";
  arr[112] = "p";
  arr[113] = "q";
  arr[114] = "r";
  arr[115] = "s";
  arr[116] = "t";
  arr[117] = "u";
  arr[118] = "v";
  arr[119] = "w";
  arr[120] = "x";
  arr[121] = "y";
  arr[122] = "z";
  arr[123] = "{";
  arr[124] = "|";
  arr[125] = "}";
  arr[126] = "~";
  arr[127] = "^?";
  arr[128] = "M-^@";
  arr[129] = "M-^A";
  arr[130] = "M-^B";
  arr[131] = "M-^C";
  arr[132] = "M-^D";
  arr[133] = "M-^E";
  arr[134] = "M-^F";
  arr[135] = "M-^G";
  arr[136] = "M-^H";
  arr[137] = "M-^I";
  arr[138] = "M-^J";
  arr[139] = "M-^K";
  arr[140] = "M-^L";
  arr[141] = "M-^M";
  arr[142] = "M-^N";
  arr[143] = "M-^O";
  arr[144] = "M-^P";
  arr[145] = "M-^Q";
  arr[146] = "M-^R";
  arr[147] = "M-^S";
  arr[148] = "M-^T";
  arr[149] = "M-^U";
  arr[150] = "M-^V";
  arr[151] = "M-^W";
  arr[152] = "M-^X";
  arr[153] = "M-^Y";
  arr[154] = "M-^Z";
  arr[155] = "M-^[";
  arr[156] = "M-^\\";
  arr[157] = "M-^]";
  arr[158] = "M-^^";
  arr[159] = "M-^_";
  arr[160] = "M- ";
  arr[161] = "M-!";
  arr[162] = "M-\\";
  arr[163] = "M-#";
  arr[164] = "M-$";
  arr[165] = "M-%";
  arr[166] = "M-&";
  arr[167] = "M-";
  arr[168] = "M-(";
  arr[169] = "M-)";
  arr[170] = "M-*";
  arr[171] = "M-+";
  arr[172] = "M-,";
  arr[173] = "M--";
  arr[174] = "M-.";
  arr[175] = "M-/";
  arr[176] = "M-0";
  arr[177] = "M-1";
  arr[178] = "M-2";
  arr[179] = "M-3";
  arr[180] = "M-4";
  arr[181] = "M-5";
  arr[182] = "M-6";
  arr[183] = "M-7";
  arr[184] = "M-8";
  arr[185] = "M-9";
  arr[186] = "M-:";
  arr[187] = "M-;";
  arr[188] = "M-<";
  arr[189] = "M-=";
  arr[190] = "M->";
  arr[191] = "M-?";
  arr[192] = "M-@";
  arr[193] = "M-A";
  arr[194] = "M-B";
  arr[195] = "M-C";
  arr[196] = "M-D";
  arr[197] = "M-E";
  arr[198] = "M-F";
  arr[199] = "M-G";
  arr[200] = "M-H";
  arr[201] = "M-I";
  arr[202] = "M-J";
  arr[203] = "M-K";
  arr[204] = "M-L";
  arr[205] = "M-M";
  arr[206] = "M-N";
  arr[207] = "M-O";
  arr[208] = "M-P";
  arr[209] = "M-Q";
  arr[210] = "M-R";
  arr[211] = "M-S";
  arr[212] = "M-T";
  arr[213] = "M-U";
  arr[214] = "M-V";
  arr[215] = "M-W";
  arr[216] = "M-X";
  arr[217] = "M-Y";
  arr[218] = "M-Z";
  arr[219] = "M-[";
  arr[220] = "M-\\";
  arr[221] = "M-]";
  arr[222] = "M-^";
  arr[223] = "M-_";
  arr[224] = "M-`";
  arr[225] = "M-a";
  arr[226] = "M-b";
  arr[227] = "M-c";
  arr[228] = "M-d";
  arr[229] = "M-e";
  arr[230] = "M-f";
  arr[231] = "M-g";
  arr[232] = "M-h";
  arr[233] = "M-i";
  arr[234] = "M-j";
  arr[235] = "M-k";
  arr[236] = "M-l";
  arr[237] = "M-m";
  arr[238] = "M-n";
  arr[239] = "M-o";
  arr[240] = "M-p";
  arr[241] = "M-q";
  arr[242] = "M-r";
  arr[243] = "M-s";
  arr[244] = "M-t";
  arr[245] = "M-u";
  arr[246] = "M-v";
  arr[247] = "M-w";
  arr[248] = "M-x";
  arr[249] = "M-y";
  arr[250] = "M-z";
  arr[251] = "M-{";
  arr[252] = "M-|";
  arr[253] = "M-}";
  arr[254] = "M-~";
  arr[255] = "M-^?";

  int i = 0;
  while (str[i]) {
    if ((flags->flag_t == 1 || flags->flag_T == 1) && (str[i] == '\t'))
      printf("^I");
    else if (flags->flag_v == 1)
      printf("%s", arr[(str[i] + 256) % 256]);
    else 
      printf("%c", str[i]);
    i++;
  }
  if (flags->flag_E == 1 && str[i] == 0)
      printf("$");
  printf("\n");
}

int read_from_files(t_cat *flags) {
  char *tmp;
  int   fd;
  int i;
  int j;
  int k;

  i = 0;
  if (flags->help == 1) {
    fd = open("man.txt", O_RDONLY);
      if (fd == -1)
        s21_exit("The file does not exist", 1);
    while ((tmp = s21_get_next_line(fd))) {
      printf("%s\n", tmp); }
    free(tmp);
    close(fd);
  }
  while (flags->files[i] != s21_NULL) {
    fd = open(flags->files[i], O_RDONLY);
    if (fd == -1)
      s21_exit("The file does not exist", 1);
    j = 1;
    k = 1;
    while ((tmp = s21_get_next_line(fd))) {
      if (flags->flag_s == 1) {
        if (*tmp == '\0')
          flags->flag++;
        else
          flags->flag = 0; }
      if (flags->flag >= 2)
        continue;
      if (flags->flag_b == 1 && *tmp != '\0') {
        printf("%6d\t", k);
        k++; }
      else if (flags->flag_n == 1 && flags->flag_b == 0) {
          printf("%6d\t", j);
          j++;
      }
      if (flags->flag == 1 || flags->flag == 0)
        print_str(tmp, flags);
      free(tmp);
      }
  close(fd);
  i++; }
  return 0;
}

void ft_check_long_param(char *str, t_cat *flag) {
  if (s21_strcmp(str, "--show-all") == 0) {
    flag->flag_v = 1;
    flag->flag_E = 1;
    flag->flag_T = 1;
  } else if (s21_strcmp(str, "--number-nonblank")== 0) {
    flag->flag_b = 1;
  } else if (s21_strcmp(str, "--show-ends") == 0) {
    flag->flag_E = 1;
  } else if (s21_strcmp(str, "--number") == 0) {
    flag->flag_n = 1;
  } else if (s21_strcmp(str, "--squeeze-blank") == 0) {
    flag->flag_s = 1;
  } else if (s21_strcmp(str, "--show-tabs") == 0) {
    flag->flag_T = 1;
  } else if (s21_strcmp(str, "--show-nonprinting") == 0) {
    flag->flag_v = 1;
  } else if (s21_strcmp(str, "--help") == 0) {
    flag->help = 1;
  } else if (s21_strcmp(str, "--version") == 0) {
    flag->flag_v = 1;
  } else {
    s21_exit("invalid long param", 1);
  }
}

// void print_param(t_cat *flag, char **str, int size) {
//   int i;
//   int j;

//   printf("%d\n", flag->flag);
//   printf("%d\n", flag->flag_A);
//   printf("%d\n", flag->flag_b);
//   printf("%d\n", flag->flag_e);
//   printf("%d\n", flag->flag_E);
//   printf("%d\n", flag->flag_n);
//   printf("%d\n", flag->flag_s);
//   printf("%d\n", flag->flag_t);
//   printf("%d\n", flag->flag_T);
//   printf("%d\n", flag->flag_u);
//   printf("%d\n", flag->flag_v);
//   printf("%d\n", flag->help);
//   printf("%d\n", flag->version);

//   i = 0;
//   while (i < size) {
//     j = 0;
//     printf("%s\n", &str[i][j]);
//     i++; }
// }

int init_cat(t_cat *flag, int argc, char **argv) {
  char *str;
  char **file_name;
  int count;
  int i;
  int j;
  i = 1;
  count = 0;
  while (i < argc) {
    str = argv[i];
    if (*str != '-') {
      count++;
    } else if (str[0] == '-' && str[1] == '-') {
      ft_check_long_param(str, flag);
    } else {
      str++;
      while (*str) {
        if (*str == 'A') {
          flag->flag_v = 1;
          flag->flag_E = 1;
          flag->flag_T = 1;
        } else if (*str == 'b') {
          flag->flag_b = 1;
        } else if (*str == 'e') {
          flag->flag_v = 1;
          flag->flag_E = 1;
        } else if (*str == 'E') {
          flag->flag_E = 1;
        } else if (*str == 'n') {
          flag->flag_n = 1;
        } else if (*str == 's') {
          flag->flag_s = 1;
        } else if (*str == 't') {
          flag->flag_v = 1;
          flag->flag_T = 1;
        } else if (*str == 'T') {
          flag->flag_T = 1;
        } else if (*str == 'u') {
          flag->flag_u = 1;
        } else if (*str == 'v') {
          flag->flag_v = 1;
        } else {
          s21_exit("invalid flag\n", 1);
        } str++; }
    } i++; }
  file_name = malloc(((count) + 1) * sizeof(char *));
  if (file_name == s21_NULL)
    s21_exit("unable to allocate memory\n", 1);
  j = 1;
  i = 0;
  while (j < argc) {
    str = argv[j];
    if (*str != '-') {
      file_name[i] = str;
      i++; }
    j++; }
  file_name[i] = s21_NULL;
  flag->files = file_name;
  free(file_name);
  //print_param(flag, file_name, count);
  return (-1);
}

void free_cat(t_cat *florida) {
  free(florida->files);
}

int main(int argc, char **argv) {
  t_cat florida;
  ft_init_flags(&florida);
  init_cat(&florida, argc, argv);
  read_from_files(&florida);
  free_cat(&florida);
  return 0;
}
