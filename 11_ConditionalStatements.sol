//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract DecisionMaking{
    uint oranges = 5;
    function validateOranges() public view returns(bool){
        /* syntax for if-else statements---->
           if(condition){//then script} else{\\script}
        */
        if(oranges == 40){
            return true;
            } else{
                return false;
            }
    }
}