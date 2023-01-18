//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract AssignmentOperator{
    uint a = 3;
    uint b = 4;
    //function assign() public view returns(uint){
        //uint c ;
       // return c=b; // assigning c to b 
    //}

    function assign2() public view returns(uint){
        uint c = 4 ;
        return c+b; 
    }

    function assign3() public view returns(uint){
        uint c = 2 ;
        //return c= c+c+b; 
        return c+= c+b; // c+c+C = c+=(means it has 2c)
    }
}