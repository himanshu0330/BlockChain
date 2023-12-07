// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mapping{
    // Key - Value Pairs

    mapping (uint => string) public emp_id; //Suppose it as a table of integer columns and a string values columns
    function setIds() public {
        // Team -> B.O.
        emp_id[31]="Himanshu";
        emp_id[27]="Chetan";
        emp_id[33]="Amogh";
        emp_id[20]="Chirag";
        emp_id[14]="Gauri";
        emp_id[23]="DK";
    }

    function getId(uint _id) public view returns(String memory){
        return emp_id[_id]; 
    }
}

// Advance Mapping Concepts
contract advMapping{
    // Suppose a case of NGO, herre people come and donate some ethers
    struct donor_dts {
        string name;
        uint age;
        string add;
        uint don;
    }
    mapping(address=>donor_dts) public acc_info;
    function set(string memory _name, uint _age, string memory _add, uint _don) {
        // acc_info[msg.sender] = donor_dts(_name, _age, _add, _don);
        acc_info[msg.sender] = donor_dts(_name, _age, _add, acc_info[msg.sender].don + _don); //we have to increase the amount for the same user
        
    }
    // Function to delete the account information of donor from the DB
    function delete_Info() public{
        delete acc_info(msg.sender);
    }
}