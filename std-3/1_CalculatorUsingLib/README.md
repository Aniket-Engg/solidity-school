# CalculatorUsingLib
## Problem Statement

Okay, once more we are back with Calculator. We had our [last version in std-2](../../std-2/2_SafeCalculator/SafeCalculator.sol)

This problem statement is implementing the same contract using a `library`.

## Informational Hint

### Library

Libraries are similar to contracts, but their purpose is that they are deployed only once at a specific address and their code is reused. As a library is an isolated piece of source code, it can only access state variables of the calling contract if they are explicitly supplied.

It is possible to obtain the address of a library by converting the library type to the address type, i.e. using `address(LibraryName)`

Know more: https://docs.soliditylang.org/en/latest/contracts.html#libraries