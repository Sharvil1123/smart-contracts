//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 <  0.9.0;
contract Auction {
    address payable public  Beneficiary;
    address public highest_bidder;
    uint public auction_end_time;
    uint public highest_bid;
    bool ended;

    mapping(address => uint) pendingReturns;

    event highestBidIncrease (address bidder,uint amount);
    event auctionEnded (address winner, uint amount);
    
    constructor(uint _biddingtime, address payable _beneficiary){
        Beneficiary = _beneficiary;
        auction_end_time = block.timestamp + _biddingtime;
    }

    function bid() public payable{
        if(block.timestamp > auction_end_time){
            revert ("The auction has ended!");
        }

        if(msg.value <= highest_bid){
            revert("The bid is not high enough");
        }

        if(highest_bid != 0){
            pendingReturns[highest_bidder] += highest_bid;
        }

        highest_bidder = msg.sender;
        highest_bid = msg.value;

        emit highestBidIncrease(msg.sender, msg.value);
    }
    // withdraw bids that were overbid
    function withDraw() public payable returns(bool){
        uint amount = pendingReturns[msg.sender]; 

        if(amount >0){
            pendingReturns[msg.sender] = 0;
        }

        if(!payable(msg.sender).send(amount)){
            pendingReturns[msg.sender] = amount;
        }
        return true;
    }

    function auctionEnd() public{
        if(block.timestamp < auction_end_time) revert("The auction has not ended yet");
        if(ended) revert("The auction is already over");
        ended = true;
        emit auctionEnded(highest_bidder, highest_bid);
        Beneficiary.transfer(highest_bid);

    }

}