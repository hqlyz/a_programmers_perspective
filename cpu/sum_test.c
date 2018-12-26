#include <stdio.h>

// long sum(long *, long);

long sum(long *start, long count) {
    long sum = 0;
    while(count) {
        sum += *start;
        start++;
        count--;
    }
    return sum;
}

int main(int argc, char const *argv[])
{
    long la[] = {100, 200, 300, 400};
    sum(la, 4);
    return 0;
}
