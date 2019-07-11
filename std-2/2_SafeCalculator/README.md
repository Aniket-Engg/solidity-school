# SafeCalculator
## Problem Statement

Extend std-1/1_Calculator/Calculator.sol with `UINT` type by performing below checks in its methods:

* Value Overflow
* Value Underflow
* Invalid Operation

Use `require` or `assert`.

## Informational Hint

### Error Handling

* assert(bool condition): causes an invalid opcode and thus state change reversion if the condition is not met - to be used for internal errors.
* require(bool condition): reverts if the condition is not met - to be used for errors in inputs or external components.
* require(bool condition, string memory message): reverts if the condition is not met - to be used for errors in inputs or external components. Also provides an error message.
* revert(): abort execution and revert state changes
* revert(string memory reason):abort execution and revert state changes, providing an explanatory string

See the dedicated section on assert and require for more details on error handling and when to use which function here: https://solidity.readthedocs.io/en/latest/control-structures.html#error-handling-assert-require-revert-and-exceptions