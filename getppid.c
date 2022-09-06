#include <stdio.h>
#include <unistd.h>


int main(void)
{
	unsigned int my_pid;

	my_pid = getpid();

	printf("%u", my_pid);

	return 0;
}
