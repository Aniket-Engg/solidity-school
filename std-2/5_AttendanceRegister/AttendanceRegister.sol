pragma solidity ^0.5.0;

contract AttendanceRegister {

    struct Student{
        string name;
        uint class;
        uint joiningDate;
    }

    address public teacher;
    uint rollNumber;

    event Added(string name, uint class, uint time);

    mapping(uint => Student) public register; // roll number => student details

    modifier isTeacher {
        require(msg.sender == teacher,"Only teacher can add student");
        _;
    }

    /**
     * @dev Constructor
     */
    constructor() public{
        teacher = msg.sender;
        rollNumber = 0;
    }


    /**
     * @dev Add student into attendance register
     * @param name Student name
     * @param class Student class
     * @param joiningDate Student joining date
     */
    function add(string memory name, uint class, uint joiningDate) public isTeacher{
        require(class > 0 && class <= 12, "Invalid class");
        Student memory s = Student(name, class, joiningDate);
        rollNumber++;
        register[rollNumber] = s;
        emit Added(name, class, now);
    }
}