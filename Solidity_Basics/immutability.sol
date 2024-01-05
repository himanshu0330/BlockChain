// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Immutable {
    address public immutable owner; // Inline or constructor assignation
    address public constant owner2 = address(1);
    address public owner3 = address(1); //Simple

    constructor(address _owner) {
        owner = _owner;
    }

    // function check() public {
    //     owner = address(1);
    // }
    //
    // Transaction gas Cost Checking ->

    function I() public view returns (address) {
        //21526 gas
        return owner;
    }

    function C() public pure returns (address) {
        //21472 gas
        // When we read a constant value we have  to make the function pure mandat.
        return owner2;
    }

    function S() public view returns (address) {
        //23564 gas
        return owner3;
    }
}
