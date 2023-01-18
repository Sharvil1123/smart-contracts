//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract RestrictedAccess{
    address public owner = msg.sender;
    uint public creationTime = block.timestamp;
/*    ------->  onlyOwner   <------*/   
    
    modifier onlyBy (address account){
        require(msg.sender == account, "Sender not authorized!"); //if this require fails it will send error "Sender not authorized"
        _;
    }

    modifier onlyAfter(uint _time) {
        require(block.timestamp >= _time,"Functions called to early!");
        _;
    }

    //function that will change the owner address!
    function changeOwnerAddress(address _newaddress) onlyBy(owner) public{
        owner = _newaddress;
    }
// function that can disown owner
// only run the function 3 weeks after the creationof the contract---> create modifier
// here if we put just 3 weeks then it will get confuse, when 3 weeks? so to slove this we put creationtime+3weeks !
    function DisownOwner() onlyBy(owner) onlyAfter( creationTime + 3 weeks) public{
        delete owner; 
    }
}