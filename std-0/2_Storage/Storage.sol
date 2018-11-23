pragma solidity ^0.5.0;

/**
 * @title Storage
 * @dev This contract stores a variable and returns its value on user demand
 */

contract Storage {

    uint256 n;

    /**
     * @dev Stores value in variable 'n'
     * @param value Value to store 
     */
    
    function store(uint256 value) public {
        n = value;
    }

    /**
     * @dev Returns value in variable 'n'
     */

    function get() public view returns (uint256){
        return n;
    }
}