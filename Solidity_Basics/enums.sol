// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract enums{

    enum Status{
        Pending, //0
        Shipped, //1
        Accepted, //2
        Rejected, //3
        Cancel //4
    }
    Status status; //By Default 0
    //Following function is called thee getter function which fetch the value of a varaible
    function getstatus() public view returns(status){
        return status;
    }
    function setstatus( Status _status) public {
        status = _status;
    }
    function rej() public{
        status = Status.Rejected;
    }
    function reset() public{
        delete status;
    }
}