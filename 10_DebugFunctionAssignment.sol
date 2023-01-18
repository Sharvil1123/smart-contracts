//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >=0.7.0 < 0.9.0;
contract learnFunctions{
    function remoteControlOpen(bool closedDoor, bool openDoor) public view returns(bool){
        //code for remoteControlopen
    }
    uint a = 45;
    function addValues() public view returns(uint){
        uint b= 3;
        uint result = a+b;
        return result;
    }

    function addNewValues() public view returns(uint){
        uint b= 5;
        uint result = a+b;
        return result;
    }

    uint b = 4;
    function multiplyCalculatorByFour(uint a) public view returns(uint){
        uint result = a*b;
        return result;
    }

    function divideCalculatorByFour(uint a) public view returns(uint){
        uint result = a/b;
        return result;
    }

     

}
