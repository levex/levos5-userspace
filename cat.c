#include <stdio.h>
#include <stdint.h>
#include <fcntl.h>

void main(int argc, char *argv[])
{
    char *file = "/text.txt";
    if(argv && argc > 1)
        file = argv[1];

	int fd = open(file, O_RDONLY);
	if(fd == -1) {
		printf("ERROR in open\n");
		exit(1);
	}
	struct stat st;
	stat(file, &st);
	uint8_t *buf = malloc(st.st_size);
	memset(buf, 0, st.st_size);
	read(fd, buf, st.st_size);
	printf("%s", buf);
	exit(0); 
}
