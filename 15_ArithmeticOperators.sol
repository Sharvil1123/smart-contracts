//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >=0.7.0 < 0.9.0;
contract Operator{
    function addition() public view returns(uint){
        uint a= 5;
        uint b= 3;
        uint result  = a+b; // addition
        return result;
    }

    function multiplication() public view returns(uint){
        uint a= 5;
        uint b= 3;
        uint result  = a*b; // multiplication
        return result;
    }

    function subtraction() public view returns(uint){
        uint a= 5;
        uint b= 3;
        uint result  = a-b; //subtraction
        return result;
    }

    function division() public view returns(uint){
        uint a= 25;
        uint b= 5;
        uint result  = a/b;  // we can't return fractions in solidity!
        return result;
    }

    function remainder() public view returns(uint){
        uint a= 12;
        uint b= 23;
        uint result  = a%b; //modulous
        return result;
    }

    function increment() public view returns(uint){
        uint a= 5;
        uint result = ++a;// increment
        return result;
    }

    function decrement() public view returns(uint){
        uint a= 5;
        uint result = --a; //decrement
        return result;
    }
}