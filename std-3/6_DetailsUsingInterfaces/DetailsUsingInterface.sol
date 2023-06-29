// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

interface BloodGroup {
    function getBG() external returns (string memory);
}

interface Age {
    function getAge() external returns (uint);
}

interface Name is BloodGroup, Age {
    function getName() external returns (string memory);
}

contract DetailsUsingInterface is Name {

    string name;
    uint256 age;
    string bloodGroup;

    constructor (string memory _name, uint256 _age, string memory _bg) {
        name = _name;
        age = _age;
        bloodGroup = _bg;
    }

    function getName() external view returns (string memory) {
        return name;
    }

    function getAge() external view returns (uint) {
        return age;
    }

    function getBG() external view returns (string memory) {
        return bloodGroup;
    }
}

