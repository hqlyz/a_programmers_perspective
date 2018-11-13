#include <stdio.h>

int bis(int x, int m) {
    return x | m;
}

int bic(int x, int m) {
    return x ^ m;
}

int bool_or(int x, int y) {
    int result = bis(x, y);
    return result;
}

int bool_xor(int x, int y) {
    int result = bic(x, y);
    return result;
}

int main(int argc, char const *argv[])
{
    /* practice 2.12 
    int val = 0x87654321;
    int x = val & 0xff;
    int y = val ^ (~0xff);
    int z = val | 0xff;
    printf("x: %.8x\n", x);
    printf("y: %.8x\n", y);
    printf("z: %.8x\n", z);
    */
    printf("bool_or: %.2x\n", bool_or(35, 23));
    printf("bool_or: %.2x\n", bool_xor(35, 23));
    
    return 0;
}
