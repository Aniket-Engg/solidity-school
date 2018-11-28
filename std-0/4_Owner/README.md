# Owner
## Problem Statement

Write a contract 'Owner' which should set an address to the owner by passing it as a parameter and also emit an event on success. It should have a function which can tell the user about the current owner address.

## Informational Hint
### Event

Solidity events give an abstraction on top of the EVM’s logging functionality. Applications can subscribe and listen to these events through the RPC interface of an Ethereum client. When you call them, they cause the arguments to be stored in the transaction’s log - a special data structure in the blockchain. The Log and its event data is not accessible from within contracts.