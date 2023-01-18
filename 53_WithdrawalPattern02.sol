//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
/*
   Instead of using "transfer" method which reverts the code, we can use the "send" method which returns bool
*/
contract withDrawalPattern{
    function sendRefund() public onlyOwner returns(bool success){
        if(!tatiana.send(amount)){
            //do something with failure
        }
    }

    // this still can get messy for accounting
    // So now we use withdrawal patter so that the customer themselves can claim their refund with their contract address
    // and we eliminate the outside interference greatly!

    function claimRefund() public{
        require(balance[msg.sender]> 0);
        msg.sender.transfer(balance[msg.sender]);
    }
}