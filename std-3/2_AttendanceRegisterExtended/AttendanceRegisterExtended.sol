// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.17;

import "../../std-2/5_AttendanceRegister/AttendanceRegister.sol";

/** @title A contract for viewing students from Attendence register 
*   @author Riju Chakraborty
*   @notice This contract is inheriting from AttendenceRegister contract
*/

contract AttendanceRegisterExtended is AttendanceRegister {

    /// @dev Function returns an object of type Student struct from Attendence Register
    function getStudentByRoll (uint256 _roll) public view returns (Student memory){
        return registered[_roll];
    }
    
}
