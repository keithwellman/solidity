// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract SimpleStorage {

    // this will get initialized to 0
    uint256 favoriteNumber;
    bool favoriteBool;

    // creates a new type
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    //people array
    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;

    // People public person = People({favoriteNumber: 2, name: "Keith"});

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    //view, pure used for reading off the blockchain
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

}
