// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/* fallback (data(bytes)-default, ether)
It is executed when a non-existent function is called on the contract.
It is required to marked as external.
It has no name.
It has no arguments.
It can't return any thing.
It can be defined one per contract.
If not marked payable, it will throw exception if contract recieves ether.
It's main use is to directly end ETH to contract.
*/

/* Receive(only take ether)
Mandatory to make it Payable.
All points are same.
*/

contract fallback_receive {
    event log(string _fun, address _sender, uint _val, bytes _data);

    // We have to do low level transaction feature of Remix IDE
    fallback() external payable {
        emit log("fallback", msg.sender, msg.value, msg.data);
        // TRY TO SEND DATA "0x234565"
        // ALSO SOME ETH (at same time)
    }

    receive() external payable {
        emit log("receive", msg.sender, msg.value, "");
        // CAN ONLY ETH
    }
}
