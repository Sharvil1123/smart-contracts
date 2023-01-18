//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract exerciseString{
    string favouriteColour = "blue";

    function stringLiteral() public view returns(string memory){
         return favouriteColour;
    }

    function changeColour(string memory change) public{
        favouriteColour = change;
    }

    function lengthString() public view returns(uint){
        bytes memory stringLength = bytes(favouriteColour);
        return stringLength.length;
    }

}