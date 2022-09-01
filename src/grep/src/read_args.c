#include "../ft_grep.h"

void    read_args(t_grep *arg, int argc, char **argv){
    int     i;

    if (!arg || !argv)
        return ;
    i = 1;
    // read the flags first
    while (i < argc && argv[i][0] == '-')
    {
        set_flag(arg, argv[i][1]);
        if (argv[i][2]){
            if (argv[i][1] == 'f')
                ft_lstadd_back(&(arg->patterns_path), ft_lstnew(ft_strdup(argv[i] + 2)));
            else if (argv[i][1] == 'e')
                ft_lstadd_back(&(arg->patterns_list), ft_lstnew(ft_strdup(argv[i] + 2)));
            else{
                arg->patterns = ft_strdup(argv[i] + 2);
                i++;
                break;
            }
        }else if (argv[i][1] == 'f'){
            if (++i == argc)
                exit_msg("grep: option requires an argument -- 'f'\n", 2, 1);
            ft_lstadd_back(&(arg->patterns_path), ft_lstnew(ft_strdup(argv[i])));
        }else if (argv[i][1] == 'e'){
            if (++i == argc)
                exit_msg("grep: option requires an argument -- 'e'\n", 2, 1);
           ft_lstadd_back(&(arg->patterns_list), ft_lstnew(ft_strdup(argv[i]))); 
        }
        i++;
    }

    // read patterns if NULL
    if (!arg->patterns && !arg->patterns_path && !arg->patterns_list && i < argc)
        arg->patterns = ft_strdup(argv[i++]);
    
    // save the rest as files
    while (i < argc)
        ft_lstadd_back(&(arg->files), ft_lstnew(ft_strdup(argv[i++])));
    
    if (!arg->patterns && !arg->patterns_path && !arg->patterns_list)
        exit_msg("Usage: grep [OPTION]... PATTERNS [FILE]...\n", 2, 1);
    
    // set flag X to 1 if there are multiple files and not flag -h
    if (arg->files && arg->files->next && !check_flag(arg, 'h'))
        set_flag(arg, F_MULTFILE);
}
