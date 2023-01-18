//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
/*contract test{
    modifier onlyOwner{
        require(true);
        _;
    }

    function returnFunds() public onlyOwner returns(bool success) {
        for(uint i=0; funders.length; i++) {
            funders[i].transfer(contributedAmount);
        }
        return true;
    }

    function returnFunds() public onlyOwner returns(bool success){
        tatiana.transfer(contributedAmount);
        john.transfer(contributedAmount);
        return true;

    }

    /* # What could go wrong here?
    -->what happens if tatiana rejects the transfer?
    -->If Tatiana rejects the transfer the function is going to fail and then john will not get paid. 
    --> Thinking that all contracts and accounts want to accept funds automatically may be intuitive at first, but in fact
        it is very naive and dangerous to build your code like this.
    --> If itis more in their interest to rejects funds then chances are they will reject the funds.
    
    fallback() public {}
    /* --> A default fallback Function is not payable! - it will reject funds.
       --> If one contract has default fallback function it would be dealy for the naive contract to refund 
           this contract address. It will not work unless everyone accepts. It will fail.
       --> Should we disallow contracts to recieve funds
       --> Beacuse not all contracts will fail or  are malicious - it would deter a DAO
    

    // How does a contract find out if another address is a contract?
}
*/

contract Victim {
    function isItAContract() public view returns(bool){
        // if there bytes of code is greater than zero then it is a contract!
        uint size;
        address a = msg.sender;
        //inline assembly access EVM at low level.
        assembly {
            // extcodesize retrives the size of the code
            size := extcodesize(a)
        }
        return(size>0);
    }
}

/*Malicious COnstructor Trick
How to hack a contract!*/
contract Attacker{
    bool public trickedYou;
    Victim victim;  // inherited a contract

    constructor(address _v2) public{
        victim = Victim(_v2);
        trickedYou = !victim.isItAContract();
    }
    //If you call the address from the constructor there are no byte codes.
}

/* What do we do in such conditions?
the ANS is --> THE WITHDRAWAL PATTERN
*/

