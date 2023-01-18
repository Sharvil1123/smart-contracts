//"SPDX-License-Identifier: UNLICENSED"
/*Hint - USe assembly and the mload to convert the data to bytes 32 successfully
    Bytes in memory size starts at second slot so we need tho bring in the add 32 to start at correct position! */
pragma solidity >= 0.7.0 < 0.9.0;


contract AssemblyExercise{
    function addtoEVM3() external view{
        bytes memory data  = new bytes(10);

        // We cannot convert this into a fixed size
        //bytes32 dataB32 = bytes32 (data)
        bytes32 dataB32;
        assembly{
            // data points us -bytes in memory is size so data starts at second slot so we add 32 bytes
            dataB32 := mload(add(data, 32)) 
            // operation add and we add 32 bytes to the first slot

        }
    
    }

    
    

}