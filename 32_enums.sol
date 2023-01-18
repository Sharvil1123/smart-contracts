//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract enumLearning{


    enum frenchFriesSize{LARGE, MEDIUM, SMALL}
    frenchFriesSize choice;  // frenchFiesSize becomes a data type for restricted data
    frenchFriesSize constant defaultChoice = frenchFriesSize.MEDIUM;

    

    function setSmall() public{
        choice = frenchFriesSize.SMALL; // created a function setsmall and gave it a choice to select small size.

    }
    
    function getChoice() public view returns(frenchFriesSize){ 
         // cause frenchFriesSize has became a datatype now
        return choice;
    }

    function getDefaultChoice() public view returns (uint){
        return uint(defaultChoice);
    }


}