// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.17;

library CalcLib {
    //For Addition
    function add(uint256 num1, uint256 num2) external pure returns (uint256) {
        require(num1 + num2 >= num1, "variable overflow");
        return num1 + num2;
    }

    // For Substraction
    function sub(uint256 num1, uint256 num2) external pure returns (uint256) {
        require(num2 <= num1, "variable underflow");
        return num1 - num2;
    }

    //For Multiplication
    function mul(uint256 num1, uint256 num2) external pure returns (uint256) {
        require((num1 * num2)/num1 == num2, "variable overflow");
        return num1 * num2;
    }

    //For Division
    function div(uint256 num1, uint256 num2) external pure returns (uint256) {
        require(num2 > 0, "invalid operation");
        return num1 / num2;
    }  

    
}

contract CalculatorUsingLib {

    /**
     * @dev Add two passed numbers and check variable overflow
     * @param a first number
     * @param b second number
     */

    function add(uint a, uint b) external pure returns (uint) {
        return CalcLib.add(a, b);
    }

    /**
     * @dev Subtract two passed numbers and first check second number is greater
     *      than first to avoid variable underflow
     * @param a first number
     * @param b second number
     */

    function sub(uint a, uint b) external pure returns (uint) {
        return CalcLib.sub(a, b);
    }

    /**
     * @dev Multiplies two passed numbers and check variable overflow
     * @param a first number
     * @param b second number
     */

    function mul(uint a, uint b) external pure returns (uint) {
        return CalcLib.mul(a, b);
    }

    /**
     * @dev Divides two passed numbers and first check that it is not a division by zero
     * @param a first number
     * @param b second number
     */

    function div(uint a, uint b) external pure returns (uint) {
        return CalcLib.div(a, b);
    }
}
