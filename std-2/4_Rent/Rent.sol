pragma solidity ^0.6.0;

contract Rent {

    address payable public landlord;
    string public tenantName;
    uint public tenantAge;
    string public tenantOccupation;

    /**
     * @dev Constructor
     * @param name Tenant name
     * @param age Tenant age
     * @param occupation Tenant occupation
     */
    constructor (string memory name, uint age, string memory occupation) public{
        tenantName = name;
        tenantAge = age;
        tenantOccupation = occupation;
        landlord = msg.sender;
    }

    /**
     * @dev receive ether function
     */
    receive() external payable {
        landlord.transfer(msg.value);
    }
}