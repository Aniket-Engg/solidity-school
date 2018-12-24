pragma solidity ^0.5.0;

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
     * @param a first number
     * @param b second number
     */

    function div(int a, int b) public pure returns (int){
        return (a/b);
    }
}