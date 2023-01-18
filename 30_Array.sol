//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract learnArrays{
    // create an array
    uint[] public array1;
    uint[] public array2;
    uint[200] public fixedArray;
    // add elements to array 
    // using push function
    function push(uint num) public {
        array1.push(num);
    }
    // remove elements from last of an arry and returns the value of the caller.
    function pop() public{
        array1.pop();
    }

    // length is the string property which is used to determine the length of the string.
    function getlength() public view returns(uint){
        return array1.length;
    }
    
    //remove a specific element
    function remove(uint i) public{
        delete array1[i];
    }
    
}