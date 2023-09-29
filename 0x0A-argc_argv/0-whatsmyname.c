#include <stdio.h>
#include "main.h"

/*
 * main: prints name of the file
 * @argc: counts number of arguments
 * @argv: pointer to array of arguments
 *
 * Return: 0(always success
 */

int main(int argc _attribute_((unused)), char *argv[])
{
	printf("%s\n", argv);

	return 0;
}
