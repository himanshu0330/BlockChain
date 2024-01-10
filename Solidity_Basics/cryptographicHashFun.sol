// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract hashFun {
    function hashKeccak256(
        uint _x,
        string memory name,
        address _add
    ) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_x, name, _add));
    }

    function hashSha256(
        uint _x,
        string memory name,
        address _add
    ) public pure returns (bytes32) {
        return sha256(abi.encodePacked(_x, name, _add));
    }

    function hashRipemd160(
        uint _x,
        string memory name,
        address _add
    ) public pure returns (bytes20) {
        return ripemd160(abi.encodePacked(_x, name, _add));
    }
}
//For same imput hash is always same
// abi.encode and abi.encodePacked are used to convert data into bytes but they return different results for same input
