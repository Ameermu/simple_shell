#include "shell.h"
/**
 * realloc - reallocates a new bloc of memory for a previous call by malloc
 * @ptr: a void pointer
 * @: an integer representing old size
 * @b: an integer representing the new size
 * Return: the new pointer
 */
void *_realloc(void *ptr, int a, int b)
{
        if (a >= b)
        {
                perror("Failed to allocate memory");
		exit(EXIT_FAILURE);
        }
        if (ptr == NULL)
        {
                return (NULL);
        }
        void *new;
        new = malloc(b);
        if (new == NULL)
        {
                return (NULL);
        }
        new = ptr;

	return (new);
}


