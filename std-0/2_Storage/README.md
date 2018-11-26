# Storage

Write a contract to set and get an integer variable. 

## Informational Hint
### Integer

Solidity has introduced both signed and unsigned integer numbers of various size. For unsigned, `uint8` to `uint256` and for signed  `int8` to `int256` in steps of 8 (unsigned of 8 up to 256 bits). `uint` and `int` are aliases for `uint256` and `int256`, respectively.

### State Variable
Variables in Ethereum usually refers as 'State Variables'. State variables are values which are permanently stored in contract storage. Think of it as a single slot in a database that can be queried and altered by calling functions of the code that manages the database.