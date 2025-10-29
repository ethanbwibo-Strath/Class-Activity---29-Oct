#include <stdio.h>

long factorial(int n);  // declare the assembly function

int main() {
    int n = 5;
    long result = factorial(n);
    printf("Factorial of %d is %ld\n", n, result);
    return 0;
}
