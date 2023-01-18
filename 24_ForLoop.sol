//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >=0.7.0 < 0.9.0;
contract ForLoop{
    uint [] public numberList = [1,2,3,4,5,6,7,8,9,10];

    function checkMultipleValidity(uint a, uint b) public view returns(bool){
        if(a%b == 0){
            return true;
        }else{
            return false;
        }
    }

    function checkMultiple(uint num) public view returns(uint){
        uint count = 0; // initial value eof count  = 0 
        /* How to Loop-->
           1. Initialize start of loop
           2. determine length of loop
           3. to direct the index to each turn */
        for(uint i = 1; i<numberList.length; i++){
            // logic for the loop 
            if(checkMultipleValidity(numberList[i], num)){
                count++;
            }
        }
        return count;
    }


}