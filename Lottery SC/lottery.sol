// SPDX-License-Identifier: GPT-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Lottery {
    address public manager;
    address payable[] public players; //Payable because we want to send money to the winner, also a array because multiple players can play

    constructor() {
        manager = msg.sender;
    }

    //to check palyer is enters or not
    function alreadyEntered() public view returns (bool) {
        for (uint i = 0; i < players.length; i++) {
            if (players[i] == msg.sender) {
                return true;
            }
        }
        return false;
    }

    function enter() public payable {
        require(msg.sender != manager, "Manager cannot play");
        require(alreadyEntered() == false, "You have already entered");
        require(msg.value >= 1 ether, "Minimum amount must be payed");
        players.push(payable(msg.sender));
    }

    function random() private view returns (uint) {
        return
            uint(
                sha256(
                    abi.encodePacked(block.difficulty, block.number, players)
                )
            );
    }

    function pickWinner() public {
        require(msg.sender == manager, "Only manager can pick winner");
        uint index = random() % players.length; //Winner index
        address contractAddress = address(this);
        players[index].transfer(contractAddress.balance);
        players = new address payable[](0); //resetting the players array
    }

    function getPlayers() public view returns (address payable[] memory) {
        return players;
    }
}
