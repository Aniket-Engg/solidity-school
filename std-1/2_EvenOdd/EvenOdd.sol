// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.17;

contract EvenOdd {

    /**
     * @dev Tells whether a number is even or odd
     * @param num Number to check
     */

    function check(int num) public pure returns (string memory){
        if(num % 2 == 0)
            return "EVEN";
        return "ODD";
    }
}