#include "ft_grep.h"

int exit_status = EXIT_FAILURE;

int main(int argc, char **argv)
{
    (void)argc;
    (void)argv;
    t_grep data;

    init_grep(&data);

    read_args(&data, argc, argv);

    split_patterns(&data);

    //print_args(&data);

    compile_patterns(&data);

    match_files_list(&data);

    free_args(&data);

    return exit_status;
}
