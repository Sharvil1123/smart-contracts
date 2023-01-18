//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract Exercise{
    uint value;

    function multiply() external pure returns(uint){
        return 3*7;

    }

    function setValue(uint data) external{
        value = data;
    }

    function valuePlusThree() external view returns(uint){
        return value+3;
    }



}