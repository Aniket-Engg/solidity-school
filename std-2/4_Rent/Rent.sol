pragma solidity ^0.5.0;

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
     * @dev Fallback
     */
    function() external payable {
        landlord.transfer(msg.value);
    }
}