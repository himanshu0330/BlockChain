// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Gives the functionality for code reusage
contract Modifier {
    modifier sameCode() {
        for (uint _i = 0; _i < 10; _i++) {
            //code
        }
        _; //This means go the the function in which the modifier is called

        //code can be written here which can again be same in every case
    }

    function fun1() public pure sameCode returns(string memory) {
        // for (uint _i = 0; _i < 10; _i++) {
        //     //code
        // }
        return "fun1 say hi!"
    }
    function fun2() public pure sameCode returns (uint _x) {
        // for (uint _i = 0; _i < 10; _i++) {
        //     //code
        // }
        // return 20;
        _x =20;  //solidity will return 20 as it is assigned no need of return keyword
    }
    function fun3() public view sameCode returns(address){
        // for (uint _i = 0; _i < 10; _i++) {
        //     //code
        // }
        return msg.sender;
    }
}
//Create a Contract of Auction in which every function checks the user is message or not 
contract auction{
    address public owner = msg.sender;

    modifier onlyOwner(){
        require(owner == msg.sender, "you are not the owner");
    }
    function startAuction() public view onlyOwner {
        
        //code
    }
    function stopAuction() public view onlyOwner {
        
        //code
    }
    function checkStatus() public view onlyOwner {

        //code
    }

    // Modifier function to change the value of age variable
    uint public age = 30;
    modifier temp(uint _x) {
        age = age + _x;
        _;
    }
    function changeAge(uint _y) public temp(_y){
        // age = age + _y; //This line is done in modifier itself the age value is updated
    }
}