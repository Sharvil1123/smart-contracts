//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract Owner{
    // function Modifiers
    address owner;
    //when we deploy this contract we want to set the address to the owner(msg.sender)
    constructor() public{
        owner = msg.sender;
    }

    //To write a modifier we statically declare a modifier keyword and then name it and inside it we write our logic
    //for modifications
    modifier onlyOwner{
        // customize logic to modify our functions
        require(msg.sender == owner);
        _;
        // "_" the underscore continues the function
    }

    modifier costs(uint price){
        require(msg.value >= price);
        _;
    }
}

// "is" is a keyword grabbing inhreitance from another contract - i.e owner
contract Register is Owner{
    
    mapping (address => bool) registeredAddresses;
    
    uint price;
    
    constructor(uint initialPrice) public {
        price = initialPrice;
    } 

    function register() public payable costs(price) {
        registeredAddresses[msg.sender] = true; //this logic will modify the outcome
    }
    /* onlyOwner ios our function modifier that requires only the owner to be able to change the price*/

    function changePrice(uint _price) public onlyOwner{
        price = _price;
    }

    
    
}