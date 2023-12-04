// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A{
    uint private x = 10; //only within the contract
    uint internal y = 100; //only within the contract and derived contracts
    uint public z = 1000; //Everywhere

    function check1() private pure returns(string memory){
        return "private";
    }
    function check2() internal pure returns(string memory){
        return "internal";
    }
    function check3() external pure returns(string memory){
        return "external";
    }
    function check4() public pure returns(string memory){
        return "public";
    }
}