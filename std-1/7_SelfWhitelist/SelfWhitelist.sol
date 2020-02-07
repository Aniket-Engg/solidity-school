pragma solidity ^0.6.0;

contract SelfWhitelist {
    address[] public whitelisted;

    /**
     * @dev add address in whitelist array
     * @param addr address to add
     */

    function whitelist(address addr) public {
        if(addr == msg.sender){
            whitelisted.push(addr);
        }
    }

    /**
     * @dev Check if address exists in whitelist array
     */

    function check() public view returns (bool){
        for(uint i = 0; i < whitelisted.length; i++){
            if(whitelisted[i] == msg.sender)
                return true;
        }
        return false;
    }
}