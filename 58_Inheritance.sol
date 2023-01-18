//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract A {
    uint innerVal = 100;
    function innerAddTen(uint a) public pure returns(uint){
        return a+ 10;
    }
}
contract B is A {
    function outerAddTen(uint b) public view returns(uint){
        return A.innerAddTen(b);
    } 

    function getInnerVal() public view returns(uint){
        return A.innerVal;
    }
}