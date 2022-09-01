#include "../ft_grep.h"

int     match(t_grep *arg, char *str, regmatch_t pmatch[], t_list **matches){
    t_list      *p;
    regmatch_t  min, *tmp;
    int         out;

    if (!arg || !arg->patterns_list || !str)
        return (0);
    out = 0;
    while (*str)
    {
        p = arg->patterns_list;
        min.rm_so = __INT32_MAX__;
        while (p)
        {
            
            if (regexec(p->content, str, 1, pmatch, 0) == 0)
            {
                out = 1;
                if (check_flag(arg, 'l'))
                    return (1);
                if (pmatch[0].rm_so != -1 && pmatch[0].rm_so < min.rm_so)
                    ft_memcpy(&min, &pmatch[0], sizeof(regmatch_t));
                else if (pmatch[0].rm_so != -1 && pmatch[0].rm_so == min.rm_so && pmatch[0].rm_eo > min.rm_eo)
                    ft_memcpy(&min, &pmatch[0], sizeof(regmatch_t));
            }
            p = p->next;
        }
        if (min.rm_so != __INT32_MAX__){
            tmp = ft_allocate(sizeof(regmatch_t));
            ft_memcpy(tmp, &min, sizeof(regmatch_t));
            ft_lstadd_back(matches, ft_lstnew(tmp));
            str += min.rm_eo;
        }else
            break;
        
    }
    return (out);
}

int    match_file(t_grep *arg, char *file_path){
    int         fd;
    char        *line;
    regmatch_t  pmatch[2];
    t_list      *matches;

    if( arg == NULL)
        return (0);
    if (file_path == NULL || ft_strncmp(file_path, "-", ft_strlen(file_path)) == 0 || \
        ft_strncmp(file_path, "--", ft_strlen(file_path)) == 0)
    {
        fd = 0;
        file_path = "(standard input)";
    }
    else if ((fd = open(file_path, O_RDONLY)) < 0)
    {
        print_error("open file_path error: ", 2, check_flag(arg, 's') == 0);
        return (0);
    }

    matches = NULL;
    while ((line = ft_get_next_line(fd)) != NULL){
        if (match(arg, line, pmatch, &matches) != check_flag(arg, 'v')){ // logical XOR
            arg->c_matches++;
            if (!check_flag(arg, 'c') && !check_flag(arg, 'l'))
            {
                if (check_flag(arg, 'o'))
                    print_matches_clean(arg, line, matches, file_path);
                else
                    print_matches_lines(arg, line, matches, file_path);
            }  
            if (check_flag(arg, 'l')){
                if (check_flag(arg, F_COLORED))
                    printf("%s%s%s\n", S21_MAGENTA ,file_path, S21_WHITE);
                else
                    printf("%s\n", file_path);
                free(line);
                break;
            }
        }else if (check_flag(arg, F_EMPTLINE) && !check_flag(arg, 'o'))
        {
            print_prifix(arg, line, file_path);
            printf("%s\n", line);
        }
        free(line);
        ft_lstclear(&matches, free);
        arg->c_lines++;
    }
    if (check_flag(arg, 'c') && arg->c_lines){
        if (check_flag(arg, F_MULTFILE))
        {
            if (check_flag(arg, F_COLORED))
                printf("%s%s%s:%s", S21_MAGENTA, file_path, S21_CYAN, S21_WHITE);
            else
                printf("%s:", file_path);
        }
        printf("%d\n", arg->c_matches);
    }

    if (fd)
        close(fd);
    return (arg->c_matches);
}

void    match_files_list(t_grep *arg){
    t_list  *p;

    if (arg == NULL)
        return ;
    p = arg->files;
    if (p == NULL)
        match_file(arg, NULL);
    while (p)
    {
        arg->c_lines = 1;
        arg->c_matches = 0;
        match_file(arg, p->content);
        p = p->next;
    }
} 
