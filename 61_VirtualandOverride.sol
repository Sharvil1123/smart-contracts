//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
abstract contract Member{
    string name;
    uint age = 45;

    function setName() public virtual returns(string memory);

    function returnAge() public view returns(uint){
        return age;
    }

} 

contract Teacher is Member{
    function setName() public view override returns(string memory){
        return "Sharvil";
    }

}