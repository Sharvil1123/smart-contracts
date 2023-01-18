//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract errorHandling{
    bool public sunny = true;
    bool public umbrella = false;
    uint finalCaluation = 0;
    // Solar Panel Machine
    // ***---> require()<---***
    function solarPanel() public{
        require(sunny,"It is not sunny today!");
        finalCaluation += 3;
        assert(finalCaluation != 6);
    }
    // final calc can nevert equal to 6
    function internalTestUnit() public {
        assert(finalCaluation != 6);

    }
    // machine that controls the weather
    function weatherChanger() public{
        sunny = !sunny;
    }
    // grab the final calculation
    function getFinalCalc() public view returns(uint){
        return finalCaluation;
    }

    function bringUmbrella() public{
        if(!sunny){
            umbrella = true;
        }else{
            revert("No need to bring umbrella today!");
        }
    }

}

