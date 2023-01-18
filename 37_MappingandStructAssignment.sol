//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract MappingandStructAssignment{

    mapping(uint=> Movie) movie;
    struct Movie{
        string title;
        string director;
    }

    function addMovie(uint id,string memory title, string memory director) public{
        movie[id] = Movie(title, director);
    }
}