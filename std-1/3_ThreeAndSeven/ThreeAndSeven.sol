pragma solidity ^0.6.0;

contract ThreeAndSeven {

    /**
     * @dev Tells whether number is divisible by 3 or 7 and greater than 10
     * @param num Number to check
     */

    function check(int num) public pure returns (bool){
        if((num % 3 == 0 || num % 7 == 0) && num > 10)
            return true;
        return false;
    }
}