//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >=0.7.0 < 0.9.0;
contract LearnFunctions{
    /*
    -->
       Syntax of functions -->
        function_name(parameter_list) scope returns(){arguments and methods// script for the function}

    eg--> function remoteControl(bool closedDoor) public returns(bool){
        //functionScript
    }
    */
    uint a = 35; //state variable
    function addValues() public view returns(uint) {
        //uint a = 10; //local variables
        uint b = 15;
        uint result = a+b;
        return result; 
    }
// we took value from state variable to calculate sum with our function!

}