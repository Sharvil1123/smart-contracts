//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract functionOverloadingExercise{

    function s(uint a, uint b) public pure returns(uint) {
        return a+b;
    }

    function s(uint a, uint b, uint c) public pure returns(uint){
        return a+b+c;
    }

    function getTwo() public pure returns(uint){
        return s(2,4);
    }

    function getThree() public pure returns(uint){
        return s(2,5,5);
    }




}