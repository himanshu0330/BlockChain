// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Revert_Assert {
    address public owner = msg.sender; // this is a state variable
    uint public age = 19;

    // function checkRequire(uint _x) public{
    //     age = age+5;
    //     require(_x>2, "Error! value of x is less than 2");
    // }
    error thowError(string, address);//Customized Error!

    function checkRevert(uint _x) public {
        age = age + 5;
        if (_x < 2) {
            //Either we can send a custom string error here, also we can send user account address by whom this address is generated to the tansactional logs
            // Another advantage is less gas cost
            // revert("Error! value of x is less than 2")
            revert thowError("Error! value of x is less than 2", msg.sender);
        }
    }

    //Validation check
    function onlyOwner() public {
        if(owner != msg.sender){
            revert( "You are not the owner");
        }
        age = age - 2;
    }

// Assert -> Mainly used for checking that the owner address is changed or not
    function checkOwnership() public view{
        assert(owner==0x71C7656EC7ab88b098defB751B7401B5f6d8976F);
        
    }

}