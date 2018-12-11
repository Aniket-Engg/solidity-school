# Calculator
## Problem Statement

Write a contract 'Calculator' to which returns addition, subtraction, multiplication and division of two passed integers without consuming gas. (Ignore various checks on passed parameters for now)

## Informational Hint
To define a function which should not consume any gas and return the response immediatly, we should use `view` or `pure` function.

### Operators

* **Comparisons:** <=, <, ==, !=, >=, > (evaluate to bool)
* **Bit operators:** &, |, ^ (bitwise exclusive or), ~ (bitwise negation)
* **Arithmetic operators:** +, -, unary -, unary +, *, /, % (remainder), ** (exponentiation)

Division by zero and modulus with zero throws an exception.

