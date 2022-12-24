# String Location Swap ALP

We take 3 inputs:
1. Src str array - rdi
2. Dest str array - rsi
3. Size N - rdx

Here, we initialise r8 register with 0 as a counter to traverse through the strings. We also store value 64 in r15 initially.

Next, we have a loop section. We initialize two more registers r9 and r10 to act as the string array iteration counters.
r9 basically holds (64 * number of strings swapped), which is again stored in r10 for value duplication.
Both r9 and r10 are used to traverse through the src and dest arrays for string swapping.
The we perform a swap using temporary register method, and once its done we increment the r8 swap counter and reiterate the loop on the condition r8 < N.

Once the condition becomes r8 >= 0, all strings have been swapped and program can be terminated.



# Even Odd sorting ALP

We take 2 inputs:
1. Unsorted array - rdi
2. Size of array, N - rsi

Initialise r8, r9 both with array base address and r10 with N.
In EvenOdd sorting, double increment iteration happens, which means the max loop iterator index r10 should be N - 2, store it in r11 also. We use rax as a bool value to keep check if is array sorted. r12 stores value 16 for easier index traversal in even-odd mode.

Now, we start with the main outer loop section, with the rax value as termination condition. Set rax to 1 (true) for loop start, and continue inside the rest of the loop.

We start with even indexed element sorting, here we compare the even indexed element, A, with the the next element, B. If A > B, we perform a swap of A and B, and after swapping reset rax to 0 to set outer loop to keep running. This process happens till all the even indices have been checked and sorted for one iteration.

Perform the same procedure for odd indexed elements next. This whole process continues till the rax value does not change from 1 to 0 during the loop run, i.e., no more swapping happens.

Once done, program ends.




# Arithmatic operations on 2 operands ALP

We define the Data Section with required user input and output prompts.

In the Text Section, we write the arithmatic operations using the 2 operands from user input.

The operations offered:
1. Addition
2. Subtraction
3. Multiplication
4. Division

For each operation we have a section function defined with required instructions to perform the operation.
We also have separate print sections to display the outputs using the operations.

Each input uses a system interrupt to prompt the user to provide input and store values in registers.
Outputs also use system interrupts to display out the result.
