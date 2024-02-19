//"SPDX-License-Identifier: MIT"
pragma solidity >= 0.7.0 < 0.9.0;

contract LotteryContract{
    address payable [] public Player;
    address public Manager;
    address payable public Winner;

    constructor() public {
        Manager = msg.sender;
    }

    function Participate() public payable {
        require(msg.value == 3 ether,"Unsufficient Ether");
        Player.push(payable(msg.sender));
    }

    function getBalance() public view returns(uint){
        require(Manager == msg.sender,"You are not Manager");
        return address(this).balance;
    }

    function random() public view returns(uint){
        return uint(keccak256(abi.encodePacked(block.difficulty,block.timestamp, Player.length)));
    }

    function pickWinner() public {
        require(Manager == msg.sender);
        require(Player.length >= 3);

        uint r = random();
        uint index = r%Player.length;
        Winner = Player[index];
        Winner.transfer(getBalance());
        Player = new address payable [](0);

    }


}//"SPDX-License-Identifier: MIT"
pragma solidity >= 0.7.0 < 0.9.0;

contract LotteryContract{
    address payable [] public Player;
    address public Manager;
    address payable public Winner;

    constructor() public {
        Manager = msg.sender;
    }

    function Participate() public payable {
        require(msg.value == 3 ether,"Unsufficient Ether");
        Player.push(payable(msg.sender));
    }

    function getBalance() public view returns(uint){
        require(Manager == msg.sender,"You are not Manager");
        return address(this).balance;
    }

    function random() public view returns(uint){
        return uint(keccak256(abi.encodePacked(block.difficulty,block.timestamp, Player.length)));
    }

    function pickWinner() public {
        require(Manager == msg.sender);
        require(Player.length >= 3);

        uint r = random();
        uint index = r%Player.length;
        Winner = Player[index];
        Winner.transfer(getBalance());
        Player = new address payable [](0);

    }


}
