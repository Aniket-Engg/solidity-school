pragma solidity ^0.5.0;

contract Calculator {
    
    /**
     * @dev Add two passed numbers and check variable overflow
     * @param a first number
     * @param b second number
     */
    
    function add(uint a, uint b) public pure returns (uint){
        uint c = a + b;
        require(c >= a, "variable overflow");
        return c;
    }
    
    /**
     * @dev Subtract two passed numbers and first check second number is greater
     *      than first to avoid variable underflow
     * @param a first number
     * @param b second number
     */

    function sub(uint a, uint b) public pure returns (uint){
        require(b <= a, "variable underflow");
        uint c = a - b;
        return c;
    }
    
    /**
     * @dev Multiplies two passed numbers and check variable overflow
     * @param a first number
     * @param b second number
     */

    function mul(uint a, uint b) public pure returns (uint){
        uint c = a * b;
        require(c/a == b, "variable overflow");
        return c;
    }
    
    /**
     * @dev Divides two passed numbers and first check that it is not a division by zero
     * @param a first number
     * @param b second number
     */

    function div(uint a, uint b) public pure returns (uint){
        require(b > 0, "invalid operation");
        uint c = a/b;
        return c;
    }
}