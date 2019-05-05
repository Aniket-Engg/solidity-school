# AllPrimeNumber
## Problem Statement

Write a contract 'AllPrimeNumber' which implements a function named addPrime & getPrime.

`addPrime()` accepts a positive(unsigned) number and adds all the prime numbers existing from 2 to passed number(excluded) in an array.

`getPrime()` will return the prime numbers added in previous call.

## Informational Hint

Use [Prime Number](https://github.com/Aniket-Engg/solidity-school/blob/master/std-1/4_PrimeNumber/PrimeNumber.sol) contract function privately.

### Array Members
* `length:`
Arrays have a length member that contains their number of elements. The length of memory arrays is fixed (but dynamic, i.e. it can depend on runtime parameters) once they are created. For dynamically-sized arrays (only available for storage), this member can be assigned to resize the array. Accessing elements outside the current length does not automatically resize the array and instead causes a failing assertion. Increasing the length adds new zero-initialised elements to the array. Reducing the length performs an implicit :ref:delete on each of the removed elements. If you try to resize a non-dynamic array that isn’t in storage, you receive a Value must be an lvalue error.
* `push:`
Dynamic storage arrays and bytes (not string) have a member function called push that you can use to append an element at the end of the array. The element will be zero-initialised. The function returns the new length.
* `pop:`
Dynamic storage arrays and bytes (not string) have a member function called pop that you can use to remove an element from the end of the array. This also implicitly calls :ref:delete on the removed element.

Know  more about Array in Solidity here: https://solidity.readthedocs.io/en/latest/types.html#arrays