#include <stdio.h>
#include <emscripten.h>

int add(int a, int b)
{
    return a + b;
}

int getWidth()
{
    int __width = EM_ASM_INT({
        // window object from browser
        return window.innerWidth;
    });

    return __width;
}