// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.17;

contract Time {

    /**
     * @dev calculates future time
     * @param time base time
     */

    function getTime(uint time) public view returns (uint){
        if(time > block.timestamp)
            return time + 1 hours + 20 minutes + 30 seconds;
        else
            return 0;
    }

}