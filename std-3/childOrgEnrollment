// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract ParentOrg {

  // base contract that holds the employee information
  struct EmployeeDetails {
    string name;
    uint age;
    string department;
    string childOrgName;
  }

  mapping (address => EmployeeDetails) employees;

    /// @notice Base method that will be inherited
    /// @dev Marked virtual because of overriding
    /// @param _name, _age, _department, _childOrgName The information of the new member being enrolled
  function enroll(string memory _name, uint _age, string memory _department, string memory _childOrgName) virtual external {
    employees[msg.sender] = EmployeeDetails(_name, _age, _department, _childOrgName);
  }
}

contract NewCompany is ParentOrg {

    /// @notice Overrides the enroll method to include child organization specific information
    /// @dev This needs to inherit with the base enroll method
    /// @param _name, _age, _department, _childOrgName The information of the new member being enrolled
  function enroll(string memory _name, uint _age, string memory _department, string memory _childOrgName) override public {
    employees[msg.sender] = EmployeeDetails(_name, _age, _department, _childOrgName);
  }
}
