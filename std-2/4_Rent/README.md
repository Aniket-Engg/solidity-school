# Rent
## Problem Statement

Write a contract named "Rent" which will be deployed by Landlord and all ethers transferred on this contract address will be automatically transferred to landlord's address, So that tenant can use contract address to pay rent. At the time of contract deployment, landlord will provide the information of tenant which will be public. Information of tenant will be name, age & occupation.

Use `fallback` function wherever required. 

## Informational Hint

### Fallback function
A contract can have exactly one unnamed function. This function cannot have arguments, cannot return anything and has to have `external` visibility. It is executed on a call to the contract if none of the other functions match the given function identifier (or if no data was supplied at all).

Furthermore, this function is executed whenever the contract receives plain Ether (without data). To receive Ether and add it to the total balance of the contract, the fallback function must be marked `payable`. If no such function exists, the contract cannot receive Ether through regular transactions and throws an exception.

Know more: https://solidity.readthedocs.io/en/latest/contracts.html#fallback-function


