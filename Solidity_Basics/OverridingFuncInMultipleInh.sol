// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A {
    uint public a;
    constructor(){
        a=100;
    }
    function funA() public {
        a=10;
    }
    function fun() public pure virtual returns(string memory){
        return "hi! i' m A";
    }
}
contract B is A{
    uint public b;
    constructor(){
        b=200;
        a=50;
    }
    function funB() public {
        a=10;
    }
    function fun() public pure virtual override returns(string memory){
        return "hi! i' m B";
    }
}
contract C is A,B{
    // We have to first give permission to C for overriding function fun() of A and B
    // Also we have to mention in brackets that which function we are overriding
    // Order Doesn't matter
    function fun() public pure virtual override(A,B) returns(string memory){
        return "hi! i' m C";
    }
}