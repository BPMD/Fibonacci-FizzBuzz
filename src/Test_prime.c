#include<stdio.h>
#include "local_types.h"

bool is_prime(u_int_32_t n); 
int main()
{
	u_int_32_t limit;
	u_int_32_t i;
	u_int_8_t new_line;
	
	printf("Enter a limit to generate a prime number: ");
	scanf("%d",&limit);
	for (i=0; i<=limit; i++) {
		if (true == is_prime(i)) {
			printf("%d ", i);
			new_line = (new_line+1) % 10;
			if (!new_line) printf("\n");
		}	
	}
	return 0;
}
