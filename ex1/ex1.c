#include <stdio.h>

/* This is a comment. */
int main(int argc, char *argv[])
{
	int i;
    int distance = 100;
	int rate = 7;

    // this is also a comment
    printf("You are %d miles away.\n", distance);
	printf("You started running %d miles per loop\n", rate);
	for (i = 0; i < 5; i++) {
		distance += rate;
		printf("You are now %d miles away\n", distance);
	}

    return 0;
}
