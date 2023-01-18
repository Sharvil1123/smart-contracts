//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract one{
    uint a = 2;
    uint b = 12;
    function prob1() public view returns(uint){
        return a+b-b+a;
    }

    function prob2() public view returns(uint){
        return a*b*b-1;
    }

    function prob4() public view returns(uint){
        return (b%a) + 3;
    }
}