// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.17;

import "../../std-2/5_AttendanceRegister/AttendanceRegister.sol";

contract AttendanceRegisterExtended is AttendanceRegister{

    function getStudentByRoll (uint256 _roll) public view returns (Student memory){
        return register[_roll];
    }
    
}
