//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract learnEtherUnits{
    function Test() public{
        assert(1000000000000000000 wei == 1 ether);
        assert(2 wei == 2);
        //assert( 1 ether = 1e18)
        assert(2 ether == 2000000000000000000 wei);
    }
}