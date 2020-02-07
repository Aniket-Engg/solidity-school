pragma solidity ^0.6.0;

contract Student {
    mapping(uint => string) public students; // rollnumber => name

    event Enrolled(uint rollnumber);

     /**
     * @dev Enrolls student
     * @param rollnumber Roll number of student
     * @param name Name of student
     */

    function enroll(uint rollnumber, string memory name) public {
        students[rollnumber] = name;
        emit Enrolled(rollnumber);
    }

}