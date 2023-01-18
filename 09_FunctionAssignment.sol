//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract LearnFunctions{
    function MultiplyCalculator(uint a,uint b) public view returns(uint){
        uint mul = a*b;
        return mul;
    }

    function DivideCalculator (uint a,uint b) public view returns(uint){
        uint div = a/b;
        return div ;
    }
}