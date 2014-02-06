#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <errno.h>
#include <sys/utsname.h>
#include <sys/types.h>
#include <sys/stat.h>

#define START_APP(loc) int _pid = 0; \
		if(_pid = fork()) { \
			levos_wait(_pid); \
		} else { \
			execve(loc, 0, 0); \
			exit(1); \
		}

size_t strsplit(char *str, char delim)
{
	size_t n = 0;
	uint32_t i = 0;
	while(str[i])
	{
		if(str[i] == delim)
		{
			str[i] = 0;
			n++;
		}
		i++;
	}
	n++;
	return n;
}
void main(int argc, char *argv[]) {
    printf("LOSH - LevOS Shell version 0.1 Arguments: %d\n", argc);
	int i = 0;	
	for(i = 0;i<argc; i++)
		printf("argv[%d] = %s\n", i, argv[i]);

	char buffer[512];
	struct utsname unamebuf;
	while(1) {
		memset(buffer, 0, 512);
		printf("LevOS $ ");
		fgets(buffer, 512, stdin);
		buffer[strlen(buffer) - 1] = 0;
		//uint32_t n = strsplit(buffer, ' ');
		if(!strcmp(buffer, "")) continue;
		if(!strncmp(buffer, "echo", 4)) {
			printf("%s\n", buffer + 5);
			continue;
		}
		if(!strncmp(buffer, "uname", 5)) {
			START_APP("/bin/uname");
			continue;		
		}
        if(!strncmp(buffer, "test", 4)) {
            if(fork()) {
				printf("Hello from parent! pid: %d\n", getpid());
				continue;
			} else {
				printf("Hello from child! Bye! pid: %d\n", getpid());
				exit(0);			
			}
        }
        if(!strncmp(buffer, "sh", 2)) {
            START_APP("/bin/sh");
            continue;
        }
		if(!strncmp(buffer, "cat", 3)) {
			START_APP("/bin/cat");
			continue;		
		}
		if(!strncmp(buffer, "ls", 2)) {
			int pid = 0;
			if(pid = fork()) {
				levos_wait(pid);
				continue;
			} else {
				char *const argv[] = {"/bin/ls", "/proc", 0};
				execve("/bin/ls", argv, 0);
				exit(1);
			}
			continue;
		}
		if(!strncmp(buffer, "stat", 4)) {
			struct stat *st = malloc(sizeof(struct stat));
			stat("/bin/sh", st);
			printf("size of /bin/sh: %d bytes\n", st->st_size);
			continue;
		}
		if(!strncmp(buffer, "exit", 4)) {
			exit(0);
		}
		printf("losh: %s: command not found\n", buffer);
	}
    exit(1337);
}
