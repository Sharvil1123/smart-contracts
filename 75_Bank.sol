//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Bank{
    mapping(address => uint256) public balances;
    mapping (address => bool) public isStaked;

}