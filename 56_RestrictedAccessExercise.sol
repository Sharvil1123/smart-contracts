//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract RestrictedAccessExercise{
    address public owner = msg.sender;
    
    modifier costs(uint amount){
        require(msg.value >= amount,"Not enough Ether provided");
        _;
    }

    function forceOwnerchanges(address _newOwner) costs(20 ether)payable public{
        owner = _newOwner;
    }

}
