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

int func1(unsigned word) {
    return (int)((word << 24) >> 24);
}

int func2(unsigned word) {
    return ((int)word << 24) >> 24;
}

int main(int argc, char const *argv[])
{
    // test_show_bytes(112);

    // int val = 0x87654321;
    // byte_pointer valp = (byte_pointer)&val;
    // show_bytes(valp, 1);
    // show_bytes(valp, 2);
    // show_bytes(valp, 3);

    // int x = -195;
    // show_int(x);
    // show_int(x >> 3);

    // show_int(func1(0x00000076));
    // show_int(func2(0x00000076));
    // show_int(func1(0x87654321));
    // show_int(func2(0x87654321));
    // show_int(func1(0x000000c9));
    // show_int(func2(0x000000c9));
    // show_int(func1(0xedcba987));
    // show_int(func2(0xedcba987));
    int i1 = 3510593;
    float f1 = 3510593.0f;
    show_int(i1);
    show_float(f1);
    return 0;
}
