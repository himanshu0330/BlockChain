// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract statevariable{
    uint public salary; //contract storage and blockcaun storage per store hote h direct cost kerte h and gas is used
    constructor(){
        salary = 1000;
    }

    function setSalary() public{
        salary = 2000;
    }
}


//cost kerte h gas to wisely use kerne hote h

//aise hi local and global varibale bhi hote h for example timestamp, diificulty scrren shot le rka h phone m 13.11.2023