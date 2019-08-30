# Lifecycle
## Problem Statement

Write a function `getStage()`, which should take no. of months as a parameter and return the user its lifecycle stage. Stages can be:

* Infant (<1 year)
* Toddler (1-2 years)
* Child (3-12 years)
* TeenAger (13-19 years)
* Adult (20-60 years, just accept it :grimacing:)
* Old   (>60 years)

Use `enum` for stage listing. 

## Informational Hint

### Enums
Enums are one way to create a user-defined type in Solidity. They are explicitly convertible to and from all integer types but implicit conversion is not allowed. The explicit conversion from integer checks at runtime that the value lies inside the range of the enum and causes a failing assert otherwise. Enums require at least one member, and its default value when declared is the first member.

The data representation is the same as for enums in C: The options are represented by subsequent unsigned integer values starting from 0.


