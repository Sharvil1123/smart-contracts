pragma solidity >= 0.7.0 < 0.9.0;
/*
In Solidity, your users have to pay every time they execute a function on your DApp using a currency called gas.
Users buy gas with Ether (the currency on Ethereum), so your users have to spend ETH in order to execute functions on your DApp.
How much gas is required to execute a function depends on how complex that function's logic is. 
Each individual operation has a gas cost based roughly on how much computing resources will be 
required to perform that operation (e.g. writing to storage is much more expensive than adding two integers).
The total gas cost of your function is the sum of the gas costs of all its individual operations.
Because running functions costs real money for your users, code optimization is much more important in Ethereum than in other programming languages. 
If your code is sloppy, your users are going to have to pay a premium to execute your functions
— and this could add up to millions of dollars in unnecessary fees across thousands of users.
********
there's no benefit to using these sub-types because Solidity reserves 
256 bits of storage regardless of the uint size. 
For example, using uint8 instead of uint (uint256) won't save you any gas.
If you have multiple uints inside a struct, using a smaller-sized uint
when possible will allow Solidity to pack these variables together to take up less storage
********
Looking back at this function, you can see we made it public in the previous lesson.
An important security practice is to examine all your public and external functions, 
and try to think of ways users might abuse them. Remember — 
unless these functions have a modifier like onlyOwner,
any user can call them and pass them any data they want to.
**********
view functions don't cost any gas when they're called externally by a user.
This is because view functions don't actually change anything on the blockchain 
– they only read the data. So marking a function with view tells web3.js that 
it only needs to query your local Ethereum node to run the function,
and it doesn't actually have to create a transaction on the blockchain 
(which would need to be run on every single node, and cost gas).
***************
We have visibility modifiers that control when and where the function can be called from:
private means it's only callable from other functions inside the contract; 
internal is like private but can also be called by contracts that inherit from this one; 
external can only be called outside the contract;
and finally public can be called anywhere, both internally and externally.
**********
We also have state modifiers, which tell us how the function interacts with the BlockChain: 
view tells us that by running the function, no data will be saved/changed. 
pure tells us that not only does the function not save any data to the blockchain, but it 
also doesn't read any data from the blockchain. Both of these don't cost any gas to call if they're called 
externally from outside the contract (but they do cost gas if called internally by another function).
************
Note: If a function is not marked payable and you try to send Ether to it as above,
the function will reject your transaction.
****************
oracles (a secure way to pull data in from outside of Ethereum) 
to generate secure random numbers from outside the blockchain.
************************
A token on Ethereum is basically just a smart contract that follows some common rules — 
namely it implements a standard set of functions that all other token contracts share, 
such as transferFrom(address _from, address _to, uint256 _tokenId) and balanceOf(address _owner).
Internally the smart contract usually has a mapping, mapping(address => uint256) balances, 
that keeps track of how much balance each address has.
So basically a token is just a contract that keeps track of who owns how much of that token, 
and some functions so those users can transfer their tokens to other addresses.
*************
assert is similar to require, where it will throw an error if false. 
The difference between assert and require is that require will refund the user the rest of their gas 
when a function fails, whereas assert will not. So most of the time you want to use require in your code; 
assert is typically used when something has gone horribly wrong with the code (like a uint overflow).
*****************************

*/