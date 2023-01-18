//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract exerciseAssert{
    function exercise() public{
        assert(1 minutes == 60 seconds);
        assert(1 hours == 60 minutes);
        assert(1 days == 24 hours);
        assert(1 weeks == 7 days);
        assert(20== 10+10);
    }
}