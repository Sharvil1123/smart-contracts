//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract Scope{
    uint public data = 10; //state variable
    function x() public returns(uint){
        data = 17;  /* Now x will be seen as data = 10, but as soon as data in initialised it will be 17
                        same for y functions too*/
        return data;
    }

    function y() public view returns(uint){
        return data;
    }
}