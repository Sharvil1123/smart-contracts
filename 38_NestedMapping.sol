//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >=0.7.0 < 0.9.0;
contract NestedMapping{

    mapping(uint=> Movie) movie;
    mapping(address => mapping(uint => Movie)) public film;
    struct Movie{
        string title;
        string director;
    }

    function addMovie(uint id,string memory title, string memory director) public{
        movie[id] = Movie(title, director);
    }

    function addmyMovie(uint id,string memory title, string memory director) public{
        film[msg.sender][id] = Movie(title, director);
    }
}
// msg.sender is global variable accessible throughout solidity which captures address that is calling the contract