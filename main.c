#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <errno.h>
#include <sys/types.h>
#define BUFFER_SIZE 1<<16
#define ARR_SIZE 1<<16

void parse_args(char *buffer, char** args, 
                size_t args_size, size_t *nargs)
{
    char *buf_args[args_size]; /* You need C99 */
    char **cp;
    char *wbuf;
    size_t i, j;
    
    wbuf = buffer;
    buf_args[0] = buffer; 
    args[0] = buffer;
    
    for(cp = buf_args; (*cp = strsep(&wbuf, " \n\t")) != NULL ;) {
        if ((*cp != '\0') && (++cp >= &buf_args[args_size]))
            break;
    }
    
    for (j = i =0; buf_args[i] != NULL; i++) {
        if(strlen(buf_args[i]) > 0)
            args[j++] = buf_args[i];
    }
    
    *nargs = j;
    args[j] = NULL;
}


int main(int argc, char *argv[], char *envp[]) {
    char buffer[BUFFER_SIZE];
    char *args[ARR_SIZE];

    int *ret_status;
    size_t nargs;
    pid_t pid;
    
    while(1) {
        printf("$ ");
        fgets(buffer, BUFFER_SIZE, stdin);
        parse_args(buffer, args, ARR_SIZE, &nargs); 

        if (nargs == 0) continue;
        if (!strcmp(args[0], "exit" )) exit(0);
        if (!strcmp(args[0], "ver" )) {
            printf("losh - version 1.0\n");        
        }
    }    
    return 0;
}
