pragma solidity > 0.6.0;

/**
 * @title Storage
 * @dev This contract stores hard coded value in the variable and returns its value on user demand
 */

contract Storage {

    uint256 n;

    /**
     * @dev Stores value in variable 'n'
     */

     **
     * user can input the value they want to store inside n
     */

    function store(uint valueToStore) public {
        n = valueToStore;
    }

    /**
     * @dev Returns value of 'n'
     */

    function get() public view returns (uint256){
        return n;
    }
}