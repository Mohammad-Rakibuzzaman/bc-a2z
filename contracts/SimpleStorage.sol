// SPDX-License-Identifier: MIT

// >=0.8.7 < 0.9.0;
// ^0.8.7 == means greater or this specific version
//0.8.20
pragma solidity ^0.8.7;

//this is most likely as class like oop based languages. ofcourse 
/*
    hypothetically it can be depoloy and run as
    a workable contract. so this is kinda
    valid contract.
    congo writing valid contract...
    
*/

//experimenting git options
contract SimpleStorage {
    //primitive datatype uint256, int256, bool, string, address, bytes32
    
    //here public is kind of retrieve function which returns some uint value 
    uint256 public favoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        // uint256 testVar = 5;
        // retrieve();

    }

    // view and pure keyword used in solidity to notate a function thats doesnt actually have to spend gas to run.

    //here public which returns some uint value 
    //below is the resemble function of upper ( uint256 public favoriteNumber; ) declaration

    // we cant update data using view function
   
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }
    
    //pure also disallow update favorite number also cant read favorite number either
    //pure function something like below
    // function add() public pure returns(uint256) {
    //     return (1+1);
    // }


    /*
    // scope
    function something() public {
        testVar = 6;
    }
    */


}
