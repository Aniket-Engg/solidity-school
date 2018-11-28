pragma solidity ^0.5.0;

/**
 * @title Owner
 * @dev This contract sets owner address and returns it on user demand
 */

contract Owner {

    address private _owner;
    
    event OwnerSet(address owner);

    /**
     * @dev Sets owner address
     * @param ownerAddress Owner address
     */
    
    function setOwner(address ownerAddress) public {
        _owner = ownerAddress;
        emit OwnerSet(_owner);
    }

    /**
     * @dev Returns current owner
     */

    function getCurrentOwner() public view returns (address){
        return _owner;
    }
}