#include <stdio.h>

float sum_elements(float a[], unsigned length) {
    int i;
    float result = 0;

    for(i = 0; i <= length -1; i++)
        result += a[i];

    return result;
}

int main(int argc, char const *argv[])
{
    float a[] = {2.3, 3.7, 1.2};
    printf("result: %.2f\n", sum_elements(a, 0));
    return 0;
}
