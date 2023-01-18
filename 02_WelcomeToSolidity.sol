//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >=0.7.0 <0.9.0;
contract ContractName{
    constructor() public{}
    function getResult() public view returns(uint){
        uint a = 10;
        uint b = 10;
        uint result = a+b;
        return result;
        

    }
}