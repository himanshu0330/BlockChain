// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract sample{
    address public owner;
    constructor(){
        owner = msg.sender;
    }

    modifier onlyowner(){
        require(msg.sender == owner, "Not Owner");
        _;
    }

    function setOwner(address _newOwner) public onlyowner(){
        require(_newOwner != address(0), "Invalid address");
        owner = _newOwner;
    }

    function onlyOwnerCanAccess() public onlyowner(){
        //CODE
    }

    function anyOneCanAccess() public{
        //CODE
    }
}

//DATA TYPES
// bool
// int
// uint
// bytes32
// string