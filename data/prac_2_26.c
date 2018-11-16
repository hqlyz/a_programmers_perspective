#include <stdio.h>
#include <string.h>

int strlonger(char *s, char *t) {
    // return strlen(s) - strlen(t) > 0;
    return (size_t)18446744073709551617 - (size_t)0 > 0;
}

int strlonger2(size_t t1, size_t t2) {
    return t1 > t2;
}

int main(int argc, char const *argv[])
{
    size_t x = 18446744073709551617;
    size_t y = 12345;
    printf("%d\n", strlonger("jjsj", "ks"));
    printf("%d\n", strlonger2(x, y));
    printf("%lu\n", x);
    return 0;
}
