// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

// We have to implement this functions in our library
// add(uint256 a, uint256 b) → uint256
// sub(uint256 a, uint256 b) → uint256
// mul(uint256 a, uint256 b) → uint256
// div(uint256 a, uint256 b) → uint256
// mod(uint256 a, uint256 b) → uint256
// max(uint256 a, uint256 b) → uint256
// min(uint256 a, uint256 b) → uint256

// @Library Is Deployed On Polygon Testnet Address :- "0x84903e57A043d28B5e476dB3cF6F5D9193AF5000";

library MathLibrary {
    //For Addition
    function add(uint256 num1, uint256 num2) external pure returns (uint256) {
        return num1 + num2;
    }

    // For Substraction
    function sub(uint256 num1, uint256 num2) external pure returns (uint256) {
        require(num1 - num2 < 0);
        return num1 - num2;
    }

    //For Multiplication
    function mul(uint256 num1, uint256 num2) external pure returns (uint256) {
        return num1 * num2;
    }

    //For Division
    function div(uint256 num1, uint256 num2) external pure returns (uint256) {
        require(num1 == 0 || num2 == 0);
        // if(num1==0 || num2==0){
        //     revert("Undefined");// To Tackle Undefined Error
        // }
        return num1 / num2;
    }

    //For Find Maximum
    function max(uint256 num1, uint256 num2) external pure returns (uint256) {
        uint256 x = num1 >= num2 ? num1 : num2;
        return x;
    }

    // For Find Minimum
    function min(uint256 num1, uint256 num2) external pure returns (uint256) {
        uint256 x = num1 >= num2 ? num2 : num1;
        return x;
    }

    // For Find Mod
    function mod(uint256 num1, uint256 num2) external pure returns (uint256) {
        require(num1 == 0 || num2 == 0);
        return num1 % num2;
    }
}
