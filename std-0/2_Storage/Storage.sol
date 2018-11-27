pragma solidity ^0.5.0;

/**
 * @title Storage
 * @dev This contract stores hard coded value in the variable and returns its value on user demand
 */

contract Storage {

    uint256 n;

    /**
     * @dev Stores value in variable 'n' 
     */
    
    function store() public {
        n = 5;
    }

    /**
     * @dev Returns value of 'n'
     */

    function get() public view returns (uint256){
        return n;
    }
}