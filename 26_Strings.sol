//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract learnString{
    string greeting = "Hello! World \n I am peter Parker just in camelCase";
    function sayHello() public view returns(string memory){
        return greeting;
    }

    function changeGreeting(string memory change) public{
        greeting = change;
    }

    /* STrings are too expensive to calculate the length of the string in the solidity.
         So we convert the strings into bytes.
         Bytes - bytes are the basic unit of measurement in computer programming*/

    function getChar() public view returns(uint){
        bytes memory stringToBytes = bytes(greeting);
        return stringToBytes.length;
    }

    
}


