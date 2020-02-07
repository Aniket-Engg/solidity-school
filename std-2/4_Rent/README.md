# Rent
## Problem Statement

Write a contract named "Rent" which will be deployed by Landlord and all ethers transferred on this contract address will be automatically transferred to landlord's address, So that tenant can use contract address to pay rent. At the time of contract deployment, landlord will provide the information of tenant which will be public. Information of tenant will be name, age & occupation.

Use `receive()` function wherever required. 

## Informational Hint

### Receive Ether Function
A contract can have at most one receive function, declared using `receive() external payable { ... }`(without the `function` keyword). This function cannot have arguments, cannot return anything and must have external visibility and payable state mutability. It is executed on a call to the contract with empty calldata. This is the function that is executed on plain Ether transfers (e.g. via `.send()` or `.transfer()`).

Know more: https://solidity.readthedocs.io/en/latest/contracts.html#receive-ether-function


