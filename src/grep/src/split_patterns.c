#include "../ft_grep.h"

// TODO: check empty lines in patterns file

void    split_patterns(t_grep *arg){
    char    **spt;
    char    **p;
    char    *line;
    int     fd, empty = 0;
    t_list  *tmp;

    if (arg == NULL)
        return ;
    if (arg->patterns)
    {
        spt = ft_split(arg->patterns, '\n');
        p = spt;
        while(*p)
            ft_lstadd_back(&(arg->patterns_list), ft_lstnew(*p++));
        free(spt);
    }else if (arg->patterns_path)
    {
        tmp = arg->patterns_path;
        while (tmp){
            if ((fd = open(tmp->content, O_RDONLY)) < 0)
                exit_perror("error reading patterns file:", 2, check_flag(arg, 's') == 0);
            while ((line = ft_get_next_line(fd))){
                if (empty == 1 && empty++)
                    set_flag(arg, F_EMPTLINE);
                if (*line == 0)
                {
                    free(line);
                    empty++;
                    continue;
                }
                ft_lstadd_back(&(arg->patterns_list), ft_lstnew(line));
            }
            close(fd);
            tmp = tmp->next;
        }
    }
}
