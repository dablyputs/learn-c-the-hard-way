#include <stdio.h>

int main(int argc, char *argv[])
{
	char lead;
	char *sidekick;
	lead = 'A';
	sidekick = &lead;
	printf("About variable 'lead':\n");
	printf("Size: %ld\n", sizeof(lead));
	printf("Contents: %c\n", lead  + 100);
	printf("Location: %p\n", &lead + 8);
	printf("And variable 'sidekick':\n");
	printf("Contents: %p\n", sidekick);
	return 0;

}

