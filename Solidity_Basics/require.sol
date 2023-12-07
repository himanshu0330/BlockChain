// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Require{
    address public owner = msg.sender; // this is a state variable
    uint public age = 19;

    function checkRequire(uint _x) public{
        age = age+5;
        require(_x>2, "Error! value of x is less than 2");
    }
    //Validation check
    function onlyOwner() public {
        require(owner==msg.sender, "You are not the owner");
        age = age-2;
        
    }
}