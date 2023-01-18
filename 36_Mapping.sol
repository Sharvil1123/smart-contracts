//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract learnMapping{
    mapping(address=>uint) public myMap;
    function getAddress(address _add) public view returns(uint){
        return myMap[_add];

    }

    function setAddress(address _add , uint _i) public{
        myMap[_add] = _i;
    }

    function removeAddress(address _add) public {
        delete myMap[_add];
    }
    
}