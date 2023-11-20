// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract view_pure{
    // FUNCTIONS =>
    //view => read only => blockchain, state variable, global variable
    //pure => no read no write
    //simple => write only => state varibale

    uint public age = 20;
    function viewFunc() public view returns(uint){
        return age; //medium gas needed
    }

    function pureFunc() public pure returns(uint){
        return 1; //lowest gas
    }
    function pureFunc2(uint _x) public pure returns(uint){
        return _x;
    }

    function simpleFunc() public {
        age += 10; //highest gas needed
    }
    function dummy() public view returns(uint){
        return age + 10; //highest gas needed
    }
}