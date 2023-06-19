# CalculatorUsingInterface
## Problem Statement

Writing same contract in different ways increases understanding. 

So, in this problem statement, we will rewrite the Calculator contract using Interface. We will use [this contract from std-2](../../std-2/2_SafeCalculator/SafeCalculator.sol)

Task is to rewrite the same contract using an `interface`.

## Informational Hint

### Interfaces

Interfaces are similar to abstract contracts, but they cannot have any functions implemented. There are further restrictions:

- They cannot inherit from other contracts, but they can inherit from other interfaces.

- All declared functions must be external in the interface, even if they are public in the contract.

- They cannot declare a constructor.

- They cannot declare state variables.

- They cannot declare modifiers.

Know more: https://docs.soliditylang.org/en/v0.8.20/contracts.html#interfaces