#include <stdio.h>
#include <limits.h>

// 相加不产生溢出返回1，溢出返回0
int tadd_ok(int x, int y) {
    int sum = x + y;
    return !((x > 0 && y > 0 && sum <= 0) || (x < 0 && y < 0 && sum >= 0));
}

// 相减不产生溢出返回1，溢出返回0

// 这个函数会给出正确的值，除了档y等于TMin时。在这个情况下，我们有-y也等于TMin，因此函数
// tadd_ok会认为只要x是负数时，就会溢出，而x为非负数时，不会溢出。实际上，情况恰恰相反：
// 当x为负数时，tsub_ok(x, TMin)为1；而当x为非负时，它为0。
// 在任何测试中，TMin都应该作为一种测试情况
int tsub_ok(int x, int y) {
    if(y == INT_MIN)
        return !tadd_ok(x, -y);
    return tadd_ok(x, -y);
}

int main(int argc, char const *argv[])
{
    int x = 112;
    int y = 2147483648;
    printf("result: %d\n", tsub_ok(x, y));
    printf("sum = %d\n", x - y);
    printf("test = %d\n", 2147483648);
    return 0;
}
