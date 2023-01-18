//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
// base contract
abstract contract X{ // mark contract as virtual.
    // this function has no implementation. It should be marked as virtual.
    function y() public view virtual returns (string memory);
}
//derived contract 
contract Z is X{
    function y() public override  view virtual returns (string memory){
        return "hello";
    }
    
}