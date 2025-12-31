/*
 * ORIGINAL NAME: buscabinaria.c
 *
 * Binary search implementation using bit shifting
 * instead of division or multiplication by 2.
 *
 * Educational example.
 */

#include <stdio.h>

/*
 * binary_search:
 * Searches for target in a sorted array.
 * Returns the index if found, or -1 otherwise.
 */
int binary_search(int array[], int size, int target);

int main(void)
{
    int array[25];
    int i;
    int target = 41;

    /* Initialize array with odd numbers */
    for (i = 0; i < 25; i++)
        array[i] = i * 2 + 1;

    i = binary_search(array, 25, target);

    if (i >= 0)
        printf("VALUE %d FOUND AT POSITION %d\n", target, i);
    else
        printf("VALUE %d NOT FOUND\n", target);

    return 0;
}

int binary_search(int array[], int size, int target)
{
    int low = 0;
    int high = size - 1;

    while (low <= high)
    {
        /* midpoint using bit shift */
        int mid = (low + high) >> 1;

        if (array[mid] == target)
            return mid;
        else if (array[mid] < target)
            low = mid + 1;
        else
            high = mid - 1;
    }

    return -1;
}

