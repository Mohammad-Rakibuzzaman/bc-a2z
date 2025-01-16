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

//EVM ethereum virtual machine
/* evm is the standards of how to deploy smart 
    contracts to ethereum like blockchains.and any blockchain
    that implements a type of evm we can deploy solidity code
    too. 
    evm compatible blockchains are : avalanche, fantom, polygon
 */ 

//experimenting git options
contract SimpleStorage {
    //primitive datatype uint256, int256, bool, string, address, bytes32
    
    //here public is kind of retrieve function which returns some uint value 
    // uint256 public favoriteNumber;
    uint256 favoriteNumber;
    
    //this is long processes to create objects
    // People public person = People({favoriteNumber: 2, name: "Patrick"});
    // People public person2 = People({favoriteNumber: 6, name: "Allyes"});
    // People public person3 = People({favoriteNumber: 7, name: "Cr"});

    
    //mapping
    mapping(string => uint256) public nameToFavoriteNumber;

    


    struct People {
        uint256 favoriteNumber;
        string name;
    }

    // uint256[] public favoriteNumbersList;
    //so we gonna create array data structure
    // People[] public people; //removing because no need duplicate function we already have retrieve function returning the same value
    People[] public people;

    //calldata, memory, storage
    //calldata is a temporary variable that cant be modified
    //memory is a temporary variable that can be modified
    //Storage is a permanent variable that can be modified
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // we can also create new array like
        // People memory newPerson = People({favoriteNumber:_favoriteNumber, name: _name});
        // People memory newPerson = People(_favoriteNumber, _name);
        
        // people.push(People(_favoriteNumber, _name));
        // people.push(newPerson);
        // _name = "cat";
        people.push(People(_favoriteNumber, _name)); //same as uppers. now we dont even need memory here also

        //lets add mapping capability
        nameToFavoriteNumber[_name] = _favoriteNumber;


    }

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
