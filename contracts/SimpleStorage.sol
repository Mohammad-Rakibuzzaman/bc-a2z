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
    
    uint256 public favoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }



}
