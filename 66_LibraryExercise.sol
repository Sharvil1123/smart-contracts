//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;

library Search2{
    function indexof(uint [] storage self, uint value) public view returns(uint){
        for(uint i = 0; i< self.length; i++) if (self[i] == value) return i;
    }
}

contract Test2{
  //using A       for B
    using Search2 for uint[];
    uint [] data;
    constructor() public{
        data.push(1);
        data.push(2);
        data.push(3);
        data.push(4);
        data.push(5);
    }

    function isValuePresent() external view returns(uint){
        uint value = 4;
        uint index = data.indexof(value);
        return index;
    }

}