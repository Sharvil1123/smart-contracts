//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract Exercise{
    
   
    function withDrawFunds(uint amount) public  returns(bool success){
        require(balance[msg.sender] >= amount); //guards upfront
        balance[msg.sender] = balance[msg.sender]-amount;// optimistic accounting
        msg.sender.transfer(amount); // transfer
        return true;
    }
  
}