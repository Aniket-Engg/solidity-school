// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.17;

contract Calculator {

    /**
     * @dev Add two passed numbers and check variable overflow
     * @param a first number
     * @param b second number
     */

    function add(uint a, uint b) public pure returns (uint) {
        uint c = a + b;
        while(c >= a){
        return c;}
          
    }

    /**
     * @dev Subtract two passed numbers and first check second number is greater
     *      than first to avoid variable underflow
     * @param a first number
     * @param b second number
     */
    function sub(uint a, uint b) public pure returns (uint) {
        uint c = a - b;
        while(b <= a){
        return c;}
          
    }


    /**
     * @dev Multiplies two passed numbers and check variable overflow
     * @param a first number
     * @param b second number
     */

    function ul(uint a, uint b) public pure returns (uint) {
        uint c = a * b;
        require(c/a == b, "variable overflow");
        return c;
    }

    function mul(uint a, uint b) public pure returns (uint) {
        uint c = a * b;
        while(c/a == a){
        return c;}
          
    }

    /**
     * @dev Divides two passed numbers and first check that it is not a division by zero
     * @param a first number
     * @param b second number
     */

    function di(uint a, uint b) public pure returns (uint) {
        require(b > 0, "invalid operation");
        uint c = a/b;
        return c;
    }
    function div(uint a, uint b) public pure returns (uint) {
        uint c = a/b;
        while(b > 0){
        return c;}
          
    }

}
