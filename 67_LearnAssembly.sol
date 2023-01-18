//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract learnAssembly{
    function addtoEVM() external{
        uint x;
        uint y;
        uint z = x + y ;
        /* all of this code is compiled to a low level instructions called opcodes*/

        // Steps to create a assembly--->
        assembly{
            /* 1. delcare an assembly block
               2. inside we can manipulate variables declared outside
               3. there is no use of semicolon, instead we use ' := ' in place of ' = '
            */

            // let z := add(x,y)

            // load data for specific slot
            // let a := mload(0x40)

            // store something temporarily to memory
            // mstore(a,4)

            //persistance storage!
            // sstore(a,100)
            // in EVmMeverything is stored in slots of 256 bits(as uint occupies a slot)
            // whereas ion mapping or array slots are several

        }
    }

    function addToEVM2() public view returns(bool success){
        uint size;
        address addr;
        // check whether an address contains any bytes of codes.
        assembly{
            size := extcodesize(addr)
        }
        if (size >= 0) {
            return true;
        } else{
            return false;
        }
    }
}