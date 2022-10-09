// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;
import "./CalculatorLibrary.sol";
contract Math{
    address  public lib ;
    constructor(){
        lib=address(CalculatorLibrary);//it gives the address of Calculator Library
    }
     
    uint public sum= CalculatorLibrary.add(2,3);
    uint public sub = CalculatorLibrary.sub(3,5);
    uint public mul= CalculatorLibrary.mul(10,20);
    uint public div = CalculatorLibrary.div(20,10);
    uint public max= CalculatorLibrary.max(34,67);
    uint public min = CalculatorLibrary.min(12,45);
    uint public mod = CalculatorLibrary.mod(10,20);

}