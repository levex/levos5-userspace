#include <stdio.h>
#include <stdlib.h>
#include <sys/utsname.h>

void main() {
    struct utsname ut;
    uname(&ut);
    printf("%s %s %s %s\n", ut.sysname, ut.nodename,
                 ut.version, ut.machine);
    exit(0);
}
