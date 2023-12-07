// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A{
    // Varibales of Parent Contract
    uint public x = 100;
    address public owner = msg.sender;
    // Functions of Parent Contract
    function fun1() public pure returns(string memory){
        return "i'm in contract A";
    }
    function fun2() public pure returns(string memory){
        return "i'm in contract A";
    }
    function fun3() public virtual pure returns(string memory){
        return "i'm in contract A";
    }
    function fun4() public virtual pure returns(string memory){
        return "i'm in contract A";
    }
}

contract B is A{
    function fun3() public override pure returns(string memory){
        return "i'm in contract B";
    }
    function fun4() public virtual override pure returns(string memory){
        return "i'm in contract B";
    }
}

contract C is B{
    function fun4() public override pure returns(string memory){
        return "i'm in contract C";
    }
}