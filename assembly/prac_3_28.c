#include <stdio.h>

long fun_b(unsigned long x) {
    long val = 0;
    long i;
    for(i = 64; i != 0; i--) {
        val = (val << 1) | (x & 0x1);
        x = x >> 1;
    }
    return val;
}

int main(int argc, char const *argv[])
{
    printf("result: %ld\n", fun_b(2ul));
    return 0;
}
