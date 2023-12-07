// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

    struct Emp {
        string name;
        uint age;
        address acc;
    }
contract Struct {
    Emp public emp;

    constructor(string memory _name, uint _age, address _acc) {
        emp.name = _name;
        emp.age = _age;
        emp.acc = _acc;
    }

    Emp[] public emps;

    function setValues() public {
        // If we are using inside the function the memory keyword will be used
        Emp memory emp1 = Emp(
            "himanshu",
            19,
            0x71C7656EC7ab88b098defB751B7401B5f6d8976F
        );
        Emp memory emp2 = Emp(
            "Amogh",
            21,
            0x71C7656Ec7AB88b098DEFb751B7401B5f6D8076F
        );
        Emp memory emp3 = Emp({acc: msg.sender, name: "Chirag", age: 19});
        //Another way of initializing
        Emp memory emp4;
        emp4.name = "Chetan";
        emp4.age = 18;
        emp4.acc = 0x71c7656Ec7aB88b098dEFb751A7401b5f6d8976F;
        // pushing values into array
        emps.push(emp1);
        emps.push(emp2);
        emps.push(emp3);
        emps.push(emp4);

        emps.push(Emp("Gauri", 21, msg.sender));
        // Let's Create a Temporary variable and try to change the value of emp
        // // 1. If we use memory(Reference) keyword then it will not change the value of emp
        // Emp memory emp_temp = emp;
        // emp_temp.name = "Himanshu Agrawal";
        // 2. If we use storage(Address) keyword then it will change the value of emp
        Emp storage emp_temp = emp;
        emp_temp.name = "Himanshu Agrawal";

        //Deletion in Struct
        delete emp_temp.acc;
        //Deletion in Array
        delete emps[1];
    }
}
// Another Contract for Struct datatype as a state variable
contract Struct2 {
    Emp public emp_struct2 = Emp("Anshu", 19, msg.sender);
}
