// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Event{
    //Remember Data Storage on Blockchain bsically means Data is Stroed on Trasaction Logs
    event balance(address account, string message, uint val);
    function setData(uint _val) public{ //simple type function does not return
        emit balance(msg.sender, "has value", _val);
    } //Deploy upto this part the output will we shown on transactional logs(Terminal)

}
// Here we have also used the concept of Indexing in Events which is used to filter the events, we only can use 3 index in a event otherwise it will give error
//Run this without indexing and with indexing and see the difference also the indexing is used in making Dapps.
contract chatApp{
    event chat(address indexed _from, address _to, string _message);
    function sendMes(address to_, string memory message_) public{
        emit chat(msg.sender, to_, message_);
    }
}