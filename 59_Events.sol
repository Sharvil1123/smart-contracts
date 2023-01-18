//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract learnEvents{
    // declare the event
    // emit the event
    // only use 3 indedexed per event as it has higher gas cost!
    event newTrade(
        uint indexed date;
        address from;
        address indexed to;
        uint indexed amount;
    )
    function trade(address to, uint amount) external{
        //outside consumer can see event through web3.js
        emit newTrade(block.timestamp, to, amount);

    }
}