# childOrgEnrollment
## Problem Statement

In Solidity, Inheritance allows function overriding.

This problem statement is about creating a contract when an employee is moved from one child organization to another organization. There should be a base contract referencing the employee enrollment first time. So an `enroll` method in base contract will take information of employee like name, age, department, childOrgName etc.

Another child contract should override `enroll` method and should update the child organization specific details like department, childOrgName etc.

## Informational Hint

### Function Overriding

Base functions can be overridden by inheriting contracts to change their behavior if they are marked as `virtual`. The overriding function must then use the `override` keyword in the function header. 

The overriding function may only change the visibility of the overridden function from `external` to `public`. The mutability may be changed to a more strict one following the order: `nonpayable` can be overridden by `view` and `pure`. `view` can be overridden by `pure`. `payable` is an exception and cannot be changed to any other mutability.

Know more: https://docs.soliditylang.org/en/latest/contracts.html#function-overriding