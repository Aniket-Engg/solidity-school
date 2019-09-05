# AttendanceRegister
## Problem Statement

Write a contract named "AttendanceRegister" which will be deployed by teacher. There will be a function add which will take student `name`,   `class` & `joiningDate` and will store it where:

- **name:** String to store student name
- **class:** Number from 1 to 12
- **joiningDate:** Date timestamp of student joining day
Each student will be stored corresponding to a unique serial number called roll number.

Only teacher can add the data of student. An event will be emitted on success.

Use `struct`, `modifier` & `mapping` wherever applicable. 

## Informational Hint

### Structs
Solidity provides a way to define new types in the form of structs. Struct types can be used inside mappings and arrays and they can itself contain mappings and arrays. 

It is not possible for a struct to contain a member of its own type, although the struct itself can be the value type of a mapping member or it can contain a dynamically-sized array of its type. This restriction is necessary, as the size of the struct has to be finite.

### Modifiers
Modifiers can be used to easily change the behaviour of functions. For example, they can automatically check a condition prior to executing the function. Modifiers are inheritable properties of contracts and may be overridden by derived contracts.

Multiple modifiers are applied to a function by specifying them in a whitespace-separated list and are evaluated in the order presented.

Explicit returns from a modifier or function body only leave the current modifier or function body. Return variables are assigned and control flow continues after the “_” in the preceding modifier.

Arbitrary expressions are allowed for modifier arguments and in this context, all symbols visible from the function are visible in the modifier. Symbols introduced in the modifier are not visible in the function (as they might change by overriding).


