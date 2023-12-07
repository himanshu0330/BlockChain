// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Function calling can be done is two ways direct and Super keyword
contract A {
    event log(string name, uint age);

    function fun1() public virtual {
        emit log("A.fun1", 21);
    }

    function fun2() public virtual {
        emit log("A.fun2", 21);
    }
}

contract B is A {
    function fun1() public virtual override {
        emit log("B.fun1", 31);
        A.fun1(); //Direct Calling -> We're specifying the parent name and the function name to call
    }

    function fun2() public virtual override {
        emit log("B.fun2", 31);
        super.fun2(); //Via Super Calling -> We are calling fun2 from the "Right to left manner" or depth first manner if B has more parents.
    }
}

contract C is A {
    function fun1() public virtual override {
        emit log("C.fun1", 41);
    }

    function fun2() public virtual override {
        emit log("C.fun2", 41);
    }
}

contract D is B, C {
    // Try to change the order to C, B u will automatically see the rule as the are equally derived from A contract
    function fun1() public override(B, C) {
        emit log("D.fun1", 51);
        B.fun1(); // b.fun1 31 a.fun1 21
    }

    function fun2() public override(B, C) {
        emit log("D.fun2", 51);
        super.fun2(); // c.fun2 41
    }
}

// NOTE -> in single inheritance super behave as direct calling but in multiple inheritance rule is followed
