//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract Member {
    string name;
    uint age;
    //initialize the name and age upon deployment
    constructor(string memory _name, uint _age) public{
        name = _name;
        age = _age;
    }
}

contract Teacher is Member{
    constructor(string memory n, uint a) Member(n,a) public {}
    function getName() public view returns(string memory){
        return name;
    }
}