//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 <  0.9.0;
contract Vendor{
    address seller;

    modifier onlySeller{
        require(msg.sender== seller);
        _;
    }

    function becomeSeller() public{
        seller = msg.sender;
    }

    function sell(uint amount)  payable public onlySeller{
        if(amount > msg.value){
            revert("There is not enough ether provided!");
        }
    }
}

