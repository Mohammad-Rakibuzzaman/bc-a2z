// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage {

    // + 5 to simplestorage function called favoriteNumber type
    //override --> if parent have the exact same function
    //"virtual" 'override' keywords both using 

    function store(uint256 _favoriteNumber) public override {
        favoriteNumber = _favoriteNumber + 5;
    }




}