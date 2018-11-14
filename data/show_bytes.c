#include <stdio.h>

typedef unsigned char *byte_pointer;

void show_bytes(byte_pointer start, size_t len) {
    size_t i;
    for(i = 0; i < len; i++) {
        printf("%.2x", start[i]);
    }
    printf("\n");
}

void show_int(int val) {
    show_bytes((byte_pointer)&val, sizeof(int));
}

void show_float(float val) {
    show_bytes((byte_pointer)&val, sizeof(float));
}

void show_pointer(void *val) {
    show_bytes((byte_pointer)val, sizeof(void *));
}

void test_show_bytes(int val) {
    int ival = val;
    int fval = (float)ival;
    int *ipval = &ival;
    show_int(ival);
    show_float(fval);
    show_pointer(ipval);
}

int main(int argc, char const *argv[])
{
    // test_show_bytes(112);

    int val = 0x87654321;
    byte_pointer valp = (byte_pointer)&val;
    show_bytes(valp, 1);
    show_bytes(valp, 2);
    show_bytes(valp, 3);

    int x = -195;
    show_int(x);
    show_int(x >> 3);
    
    return 0;
}
