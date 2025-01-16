//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./SimpleStorage.sol";



contract StorageFactory {

    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorage() public {
        //how does storage factory know what simple storage looks like?
    
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);

    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {

        //address
        //ABI - application binary interface when we import other contract we easily automatically get it. ifuture w will look further

        // SimpleStorage simpleStorage = SimpleStorage(simpleStorageArray[_simpleStorageIndex]);
        // simpleStorage.store(_simpleStorageNumber);

        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);

    }


    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        // SimpleStorage SimpleStorage = SimpleStorage(simpleStorageArray[_simpleStorageIndex]);
        // return SimpleStorage.retrieve();
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }



}

