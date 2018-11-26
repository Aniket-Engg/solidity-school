# HelloWorld

Write a contract to print a string "Hello World!". Printing should not involve any gas.

## Informational Hint
To define a function which should not consume any gas and return the response immediatly, we should use `view` or `pure` function.

* <b>View Functions:</b> Functions can be declared view in which case they promise not to modify the state.
* <b>Pure Functions:</b> Functions can be declared pure in which case they promise not to read from or modify the state.