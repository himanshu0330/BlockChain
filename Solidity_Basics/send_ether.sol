// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract sendEth {
    // Send function ->
    // send -> return -> bool -> true(tansact success) -> false(tansact failed)
    // limit -> 2300 gas -> out of gas error(tansact failed)
    // always use with Require to -> revert the gas and revert the changes in state variables
    //
    // Transfer function ->
    // transfer -> no return -> revert the changes if gas is not there implicitly
    // limit -> 2300 gas
    //
    // Call function ->
    // Gas is explicitly defined by user -> return bool value and data(in bytes)
    // require is used because it also not revert

    address payable public getter = payable();

    receive() external payable();
    function checkbal() public view returns(uint){
        return address(this).balance;
    }

    function SEND() public {
        bool sent = getter.send(10000000000000000000000000)
    }
}
