pragma solidity ^0.5.0;

contract Calculator {
    function add(int a, int b) public pure returns (int){
        return (a+b);
    }
    
    function sub(int a, int b) public pure returns (int){
        return (a-b);
    }
    
    function mul(int a, int b) public pure returns (int){
        return (a*b);
    }
    
    function div(int a, int b) public pure returns (int){
        return (a/b);
    }
}