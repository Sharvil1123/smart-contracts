//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract conversionLearning{
    /* uint defaults to uint256
    the min value is 0 and the maximum value is (2^256)-1 which is huge
    Every transcation costs gas!
    uints can be declared in less bits also like uint8, uint16, uint32,etc
    */
    //Conversion to smaller type costs higher order bits[less data is stored]
    uint32 a = 0x12345678;
    uint16 b = uint16(a);
    //ANS---> b = 0x5678

    //Conversion to higher type adds padding bits to the left.
    uint16 c = 0x1234;
    uint32 d = uint32(d);
    //ANS---> d = 0x00001234

    //what is the cost?
    //Conversion to smaller bytes costs higher order data
    bytes2 e = 0x1234;
    bytes1 f = bytes1(e);
    //ANS---> f = 0x12

    //Conversion to larger bytes adds padding bits to the right
    bytes2 g = 0x1234;
    bytes4 h = bytes4(g);
    //ANS---> h = 0x12340000
    
}