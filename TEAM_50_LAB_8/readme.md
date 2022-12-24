# Lab 08

## Prob 1:

This program finds the length of the given string. A string is taken given as input and then check the string for null character, traversing through each character of the string and incrementing the length counter. The null character is found using the byte form of the characters of the string. The null character '\0' is represented by 0 in byte. When we find the null character we stop and return the length using rax.

## Prob 2:

This program reverses the given string and stores the reversed string in another string. Reversing the string is done using stack operations. We push every character of the string into the stack from the start till the null character i.e the end of the string. Then we pop all the characters into a new string and place a null character at the end of the string. This gives the reversed string of the input string.

## Prob 3:

This program sorts the set of strings provided using selection sort. The number of strings 'n' and set of strings is provided as input. Then we check for the right string for each position in the array. We take the present string at the position as the suitable string for that position and compare it with all the other strings succeeding that position to check for the lexicographically smallest string. This is done by comparing the characters of both strings to find which string must occur before the other in lexicographic order and swap the most suitable string for the present position. This is repeated for n times for all strings.