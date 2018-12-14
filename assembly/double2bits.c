#include <stdio.h>

unsigned long double2bits(double d) {
    union {
        double d;
        unsigned long u;
    } temp;
    temp.d = d;
    return temp.u;
}

int main(int argc, char const *argv[])
{
    printf("%lu\n", double2bits(3.5));
    return 0;
}
