//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract fallBack{

    event Log(uint gas);

    fallback () external payable{
        emit Log(gasleft());
        /* not recommended to write much code here because the function will fail here if it uses too 
        much gas 
        
        invoke the send method - we get 2300 gas which is enough to emit a log
        invoke the call method - we get all the gas 

        Special solidity function  "gasleft" returns how much gas is left.
         */
    }

    function getBalance() public view returns(uint){
        return address(this).balance;
        //returns the stored balance of the contract
    }
}

contract SendtoFallBack{
    function transfertoFallBack(address payable _to) public payable{
        _to.transfer(msg.value);
    }

    function callFallback(address payable _to) public payable{
        (bool sent,) = _to.call{value:msg.value}('');
        require(sent, "Failed to send");
    }
}