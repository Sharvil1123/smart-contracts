//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >=0.7.0 < 0.9.0;
contract myLoopingPracticeContract{

    uint []  longList = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
    uint []  numberList = [1,4,34,56];
    
    function loopingThroughList(uint num_a) public view returns(bool){
        bool numExists = false;
        for(uint i=0; i<numberList.length; i++){
            if(numberList[i] == num_a){
                numExists =true;
            }
        }
        return numExists;
    }

    function evenNum() public view returns(uint){
        uint count = 0;
        for(uint i=0; i<longList.length; i++){
            if(longList[i]%2 == 0){
                count++;
            }
        }
        return count;
    }
}