//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Bank{
    mapping(address  => uint256) public  balances;
    mapping (address => bool) public isStaked;

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        msg.sender.transfer(amount);
    }

    function stake() public {
        require(!isStaked[msg.sender], "Already Staked");
        isStaked[msg.sender] = true;
    }

    function unStake() public {
        require(isStaked[msg.sender], "Not Staked");
        isStaked[msg.sender] = false;
    }

    function lend(address borrower, uint256 amount) public{
        require(isStaked[msg.sender], "Sender must be staked");
        require(balances[msg.sender] >= amount, "Insufficient Balance");
        balances[borrower] += amount;
        balances[msg.sender] -= amount;
    }

    function repay(address lender, uint256 amount) public {
        require(balances[msg.sender] >= amount, "Insufficient Balance");
        balances[lender] += amount;
        balances[msg.sender] -= amount;
    }

}