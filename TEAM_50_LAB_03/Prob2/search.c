

#include <stdio.h>
#include <inttypes.h>

int64_t linearS(int64_t[], uint64_t, int64_t);

int main()
{
	long A[] = {5, 67, 42, 6, 7, 8};
	long k;

	printf("\nGiven array:\n");
	for (int i = 0; i < 6; i++)
		printf("%ld ", A[i]);

	// printf("\nEnter key to search: ");
	// scanf("%ld", &k);

	// if (linearS(A, 6, k) == -1)
	// 	printf("\nKey %ld not found\n", k);
	// else
	printf("\nKey %ld found at position %ld\n", k, linearS(A, 3, 0));
	return 0;
}