//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract enumPractice{

    enum shirtColour{RED, WHITE, BLUE}
    shirtColour Choice;
    shirtColour constant defaultChoice = shirtColour.BLUE;

    function setWhite() public{
        Choice = shirtColour.WHITE;
    }

    function getChoice() public view returns(shirtColour){
        return Choice;
    }

    function getDeafultChoice() public view returns(uint){
        return uint(defaultChoice);
    }
}