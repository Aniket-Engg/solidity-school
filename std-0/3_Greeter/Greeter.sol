pragma solidity ^0.5.0;

/**
 * @title Greeter
 * @dev This contract sets greeting string and returns it on user demand
 */

contract Greeter {

    string private _greeting;

    /**
     * @dev Sets greeting message
     * @param message greeting message by user 
     */
    
    function greet(string memory message) public {
        _greeting = message;
    }

    /**
     * @dev Returns greeting message
     */

    function getGreeting() public view returns (string memory){
        return _greeting;
    }
}