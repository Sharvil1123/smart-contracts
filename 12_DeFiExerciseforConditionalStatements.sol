//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract DeFiExercise{
    uint stakingWallet = 9;  //State variable
    function airDrop() public view returns(uint){
        if(stakingWallet == 10){
            return stakingWallet+10;
        } else{
            return stakingWallet + 1;
        }
    }

}