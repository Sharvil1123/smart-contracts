//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract LedgerBalance{
    mapping(address => uint) balance;
    function updateBalance(uint newBalance) public {
        balance[msg.sender] = newBalance;

    }

}

contract Updated{
    function updatesBalance(uint newUpdatedBalance) public{
        LedgerBalance ledgerbalance = new LedgerBalance();
        ledgerbalance.updateBalance(30);
    }
}

//other Global Variables
contract simpleStorage{
    uint storedData;
    function set(uint x) public{
        //storedData = x;
        //storedData = block.difficulty;
        //storedData = block.timestamp;
        storedData = block.number;


    }

    function get() public view returns(uint){
        return storedData;
    }
}