# Lab01

### Program 1 : integer_representation.c :

It has option of displaying 32 bit as well as 64 bit integer representation. The variable `int bits` decides the number of bits to be displayed . Type in 64 or 32(default) for such representation. It uses recursion to print out the bits using bitwise & operator and right shift operator.

<br/>

### Program 2 : float_representation.c :

The program represents the IEEE format of floating point number. We first store the memory address of the float variable using a pointer. Then we store the bits in that address into an long long int variable. The long long int variable contains bits in such a way that it has the corresponding bit flips of the float variable. The rest of the process is the same as for the int system recommendation. For simplicity, we are just using an array and for loop to store the result. Next, we print out the result in an appropriate format.

---

<br/>

### Program 3 : double_representation.c :

The program represents the IEEE format of double. We first store the memory address of the double variable using a pointer. Then we store the bits in that address into an long long int variable. The long long int variable contains bits in such a way that it has the corresponding bit flips of the double variable. The rest of the process is the same as for the int system recommendation but here we iterate for 64 times as double has 64 bits. For simplicity, we are just using an array and for loop to store the result. Next, we print out the result in an appropriate format.

---

<br/>
<br/>
