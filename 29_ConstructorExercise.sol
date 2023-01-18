//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract Base{
    uint data;
    constructor(uint _data)public {
        data = _data;
    }

    function getdata() public view returns(uint){
        return data;
    }
}

contract Derived is Base (5) {
    function getBaseData() public view returns(uint){
        return data;
    }
}