//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >=0.7.0 < 0.9.0;
contract Modulo{
    function checkMultiple(uint a, uint b) public view returns(bool){
        if(a%b == 0){
            return true;
        }else{
            return false;
        }
    }
}