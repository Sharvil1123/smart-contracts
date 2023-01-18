//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract generateRandomNumber{
    /* 1. build a random number generator which takes an input range and uses cryptographic hashing.
       2. using modulo(%)- so computing against the remainder we will be abletoproduce a random number within a range.
    */
    //randomnumber generator
    function randomNum(uint range) external view returns(uint){
        /* 1. Grab information from blockchain randomly to genereate random numbers- we need something dynamiclly changing 
            2. "abi.encodePacked" concatonates arguments nicely  
        */

        return uint(keccak256(abi.encodePacked(block.timestamp, block.difficulty,msg.sender))) % range;
    }
}