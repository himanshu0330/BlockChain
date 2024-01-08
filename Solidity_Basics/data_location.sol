// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract dataLoc {
    // uint[] public arr = [1,3,7,9,22];
    // function Storage() public {
    //     uint[] storage arrs = arr; //arrs is pointing to same arr
    //     arrs[3] = 99;
    // }
    // function mem() public{
    //     uint[] storage arrm = arr; //arrm is copy of arr
    //     arrm[1] = 192;
    // }
    function Memory(string memory str, uint[] memory arr) public {
        getInMem(arr);
        getInCall(arr);
    }

    function Calldata(string calldata str, uint[] calldata arr) public {
        // this is used when we do not want to chnage the value once inputted by a user
        // it helps to reduce the gas cost
    }

    function getInMem(uint[] memory arr) public {}

    function getInCall(uint[] calldata arr) public {}
}
