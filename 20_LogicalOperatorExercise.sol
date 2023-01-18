//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >=0.7.0 < 0.9.0;
contract LogicalOperatorExercise{
    
    uint a = 17;
    uint b = 32;
    function prob1() public view returns(uint){
        uint result = 0;
        if(b>a && a!=b){
            result = (a*b)/b;
        }
        return result;

    } 
}