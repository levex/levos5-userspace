#include <stdio.h>
#include <fcntl.h>
#include <dirent.h>

void main(int argc, char *argv[]) {
	/*printf("There are %d arguments:\n", argc);
    int i;
	for(i=0;i<argc; i++)
		printf("argv[%d]: %s\n", i, argv[i]);*/

    char *loc = "/proc";
    if(argv && argc > 1)
	    loc = argv[1];
	DIR *fd = opendir(loc);
	struct dirent *de = 0;
	while(de = readdir(fd))
		printf("%s\n", de->d_name);

	exit(0);
}
