//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract comparisonOperators{
    uint a = 4;
    uint b = 4;
    function compare() view public{
        //less than(<)
        //require(a>b, 'This is false');
        //require(a>b, 'This is false');
        require(a!=b, 'This is true');
    }
}