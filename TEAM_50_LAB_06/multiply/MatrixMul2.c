// Multiplication of two matrices
#include <stdio.h>
#include <inttypes.h>

void mulMat2(int64_t[], int64_t[], int64_t[], int64_t);

int main()
{
	long int n;
	long int k = 0;
	printf("\n Enter the value of n:");
	scanf("%ld", &n);
	long int A[n * n], B[n * n], C[n * n];
	// Initialize the Matrices
	for (long int i = 0; i < n; i++)
	{
		for (long int j = 0; j < n; j++)
		{
			A[i * n + j] = 1;
			B[i * n + j] = ++k;
			C[i * n + j] = 0;
		}
	}
	mulMat2(C, A, B, n); // C[]=A[]*B[]; 1st arg-rdi, 2nd arg-rsi, 3rd-rdx, 4th-rcx
	// Printing the result
	for (long int i = 0; i < n; i++)
	{
		for (long int j = 0; j < n; j++)
		{
			printf("\t %ld", C[i * n + j]);
		}
		printf("\n");
	}
	return 0;
}
