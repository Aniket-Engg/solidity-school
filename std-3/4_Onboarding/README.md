# Onboarding
## Problem Statement

This problem statement is about creating a contract when an employee is onboarded by providing certain details. Then Employee is allocated to a project.

Create an abstract contract named `Onboarding` which will have a method `join`. Method will take some details through parameters which will be stored. This contract will define some other method defining the next steps of onboarding. 

Another contract, named `Allocation` will inherit abstract contract `Onboarding` and implement the method to complete the allocation process.

## Informational Hint

### Abstract Contracts

Contracts must be marked as abstract when at least one of their functions is not implemented or when they do not provide arguments for all of their base contract constructors. Even if this is not the case, a contract may still be marked abstract, such as when you do not intend for the contract to be created directly.

An abstract contract is declared using the abstract keyword. If a contract inherits from an abstract contract and does not implement all non-implemented functions by overriding, it needs to be marked as abstract as well.

Know more: https://docs.soliditylang.org/en/latest/contracts.html#abstract-contracts
