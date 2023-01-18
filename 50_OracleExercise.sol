//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract Oracle{
    address admin;
    uint public rand;
    
    constructor() public{
        admin= msg.sender;
    }
    
    function take(uint a) external {
        require(msg.sender==admin);
        a= rand;
    }
}

contract generateRandomNumber{
    Oracle oracle;

    constructor(address oracleAddress){
        oracle = Oracle(oracleAddress);
    }

    function randomNum(uint range) external view returns(uint){
        return uint(keccak256(abi.encodePacked(oracle.rand(),block.timestamp, block.difficulty,msg.sender))) % range;
    }
}