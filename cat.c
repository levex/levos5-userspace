#include <stdio.h>
#include <stdint.h>
#include <fcntl.h>

void main(void)
{
	int fd = open("/text.txt", O_RDONLY);
	if(fd == -1) {
		printf("ERROR in open\n");
		exit(1);
	}
	struct stat st;
	stat("/text.txt", &st);
	uint8_t *buf = malloc(st.st_size);
	read(fd, buf, st.st_size);
	printf("%s", buf);
	exit(0); 
}
