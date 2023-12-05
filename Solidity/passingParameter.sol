// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A {
    string public name;
    uint public age;

    constructor(string memory _name, uint _age) {
        name = _name;
        age = _age;
    }
}

contract B {
    string public add;
    uint public salary;

    constructor(string memory _add, uint _salary) {
        add = _add;
        salary = _salary;
    }
}

// Passing data in constructor
// 1st Way
contract C is A("Ansh", 19), B("Mathura", 100000) {

}

// 2nd Way
contract D is A, B {
    constructor() A("Ansh", 19) B("Mathura", 100000) {}
}

// 3rd Way -> Dynamic Value transfer
contract E is A, B {
    constructor(
        string memory _name,
        uint _age,
        string memory _add,
        uint _salary
    ) A(_name, _age + 2) B(_add, _salary) {}
}

// 4th Way -> Dynamic Value transfer also static value transfer
contract F is A("Himanshu", 19), B {
    constructor(
        string memory _name,
        uint _age,
        string memory _add,
        uint _salary
    ) B(_add, _salary) {}
}
// Order of inheritance is important