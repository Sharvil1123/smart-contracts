//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >=0.7.0 < 0.9.0;
contract learnViewandPure{
    uint value;

    //get value is a read only function that returns a value
    function getValue() external view returns(uint){
        return value;
    }

    function getNewValue() external pure returns(uint){
        return 3*3;
    }

    //setValue modifies the state value
    function setValue(uint _Value) external{
        value = _Value;
    }
    

    
}