# AllPrimeNumber
## Problem Statement

Write a contract 'AllPrimeNumber' which implements a function named addPrime & getPrime.

`addPrime()` accepts a positive(unsigned) number and adds all the prime numbers existing from 2 to passed number(excluded) in an array.

`getPrime()` will return the prime numbers added in previous call.

## Informational Hint

Use [Prime Number](https://github.com/Aniket-Engg/solidity-school/blob/master/std-1/4_PrimeNumber/PrimeNumber.sol) contract function privately.

### Array Members
* `length`

Arrays have a length member that contains their number of elements. The length of memory arrays is fixed (but dynamic, i.e. it can depend on runtime parameters) once they are created.

* `push()`

Dynamic storage arrays and bytes (not string) have a member function called push() that you can use to append a zero-initialised element at the end of the array. It returns a reference to the element, so that it can be used like x.push().t = 2 or x.push() = b.

* `push(x)`

Dynamic storage arrays and bytes (not string) have a member function called push(x) that you can use to append a given element at the end of the array. The function returns nothing.

* `pop`

Dynamic storage arrays and bytes (not string) have a member function called pop that you can use to remove an element from the end of the array. This also implicitly calls delete on the removed element.

Know  more about Array in Solidity here: https://solidity.readthedocs.io/en/latest/types.html#arrays