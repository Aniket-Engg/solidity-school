# Calculator
## Problem Statement

Write a contract 'Calculator' to which returns addition, subtraction, multiplication and division of two passed integers without consuming gas. (Ignore various checks on passed parameters for now). Use SPDX License Identifier.

## Informational Hint
To define a function which should not consume any gas and return the response immediatly, we should use `view` or `pure` function.

### Operators

* **Comparisons:** <=, <, ==, !=, >=, > (evaluate to bool)
* **Bit operators:** &, |, ^ (bitwise exclusive or), ~ (bitwise negation)
* **Arithmetic operators:** +, -, unary -, unary +, *, /, % (remainder), ** (exponentiation)

Division by zero and modulus with zero throws an exception.

### SPDX License Identifier

Trust in smart contracts can be better established if their source code is available. Since making source code available always touches on legal problems with regards to copyright, the Solidity compiler encourages the use of machine-readable [SPDX license identifiers](https://spdx.org/). Every source file should start with a comment indicating its license:

`// SPDX-License-Identifier: MIT`

