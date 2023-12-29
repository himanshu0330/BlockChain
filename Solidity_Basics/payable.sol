// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// 1 Ether = 10 ^ 18 Wei
contract Payable {
    address payable public owner = payable(msg.sender); //we have to type case the address

    constructor() payable {
        // we can send ether to this Payable contract during deployment due to this Constructor.
    }

    function getETH() public payable {
        // we can't make it view or pure type
    }

    function checkBal() public view returns (uint) {
        return address(this).balance; //to check the balance of current account
    }

    //Color of buttons:-
    // Red -> Payable
    // Blue -> View or Pure or State Variable
    // Yellow -> Simple / Transctional function
}
