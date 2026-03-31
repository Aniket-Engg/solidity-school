// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.17;

contract Calculator {

    /**
     * @dev Adds two passed numbers
     * @param a first number
     * @param b second number
     */

    function add(int a, int b) public pure returns (int){
        return (a+b);
    }

    /**
     * @dev Subtracts two passed numbers
     * @param a first number
     * @param b second number
     */

    function sub(int a, int b) public pure returns (int){
        return (a-b);
    }

    /**
     * @dev Multiplies two passed numbers
     * @param a first number
     * @param b second number
     */

    function mul(int a, int b) public pure returns (int){
        return (a*b);
    }

    /**
     * @dev Divides two passed numbers
     * @dev require statement to avoid division by zero
     * @param a first number
     * @param b second number
     */

    function div(int a, int b) public pure returns (int){
        require(b != 0, "Division by zero");
        return (a/b);
    }
}