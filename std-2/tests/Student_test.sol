// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.17;
import "remix_tests.sol"; // this import is automatically injected by Remix.
import "hardhat/console.sol";
import "../1_Student/Student.sol";

contract StudentTest {

    Student student;
    function beforeAll () public {
        student = new Student();
    }

    function checkEnroll () public {
        console.log("Running checkEnroll");
        student.enroll(1, "testName");
        Assert.equal(student.students(1), "testName", "student name is wrong");
    }
}
