//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract Exercise{
    uint private data = 10;  // data became private  now!
    function x() external pure returns(uint){
        uint newData = 25;
        return newData;  // there should be no function x in other function!
        /*other method 
           function x() public pure returns(uint){
           uint newData = 25;
           return newData;
           }
           internal - can be accessed only within the smart conracts!
           external - you can't access the info within the contract and it will be useless. you can only call the function 
                      outside the contract an dnot from other functions within. It restricts being state variable. 
        */
    }

    function y() public view returns(uint){
        return data;
    }


    function z() private pure returns(uint){
        uint newData = 10;  // z function has no acces now!
        return newData+15;
    }
} 
