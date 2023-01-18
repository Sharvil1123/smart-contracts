//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
/* Logical Operators---->
  logical AND-->  &&
  logical OR -->  ||
  logical NOT-->  ! */

contract logicalOperators{
    uint a = 4;
    uint b = 5;
    function logic() public view returns(uint){
        uint result = 0;
        if(a<b && a==4){
            result = a+b;
        }
        return result;
    }

    function logic2() public view returns(uint){
        uint result = 0;
        if(a<b && a==5){
            result = a+b;
        }
        return result;
    }

    function logic3() public view returns(uint){
        uint result = 0;
        if(a<b || a==4){
            result = a+b;
        }
        return result;
    }
}