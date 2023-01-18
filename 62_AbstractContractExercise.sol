//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
abstract contract Calculator{
    function sum() public view virtual returns (uint); // virtual --> when abstract contract and function is empty
}

contract Test is Calculator{
    function sum() public  pure override returns (uint){ // override --> to override the function from other contract!
        return 1+2;
    }

}