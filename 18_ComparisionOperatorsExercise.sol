//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract comparisonOperatorsExercise{
    uint a = 323;
    uint b = 54;
    function compare() view public{
        //less than(<)
        //require(a>b, 'This is false');
        //require(a>b, 'This is false');
        require(a<=b, "This comparision is false");
    }
}