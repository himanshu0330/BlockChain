// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Struct {
    Struct Emp{
        string name;
        uint age;
        address acc;
    }
    Emp public emp;
    constructor(string _name, uint _age, address  _acc){
        emp.name = _name;
        emp.age = _age;
        emp.acc = _acc;
    }
    Emp[] public emps;

    function setValues() public {
        // If we are using inside the function the memory keyword will be used
        Emp memory emp1 = Emp("himanshu",19, 0x71C7656EC7ab88b098defB751B7401B5f6d8976F);
        Emp memory emp2 = Emp("Amogh",21, 0x71C7656EC7ab88b098defB751B7401B5f6d8076F);
        Emp memory emp3 = Emp({acc:msg.sender, name:"Chirag", age:19});
        //Another way of initializing
        Emp memory emp4;
        emp4.name = "Chetan";
        emp4.age = 18;
        emp4.acc = 0x71C7656EC7ab88b098defB751A7401B5f6d8976F;
        // pushing values into array 
        emps.push(emp1);
        emps.push(emp2);
        emps.push(emp3);

        emps.push(Emp("Gauri",21, msg.sender));
    }

}