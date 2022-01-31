// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title User
 * @dev A traveler who has subscribed to the insurance
 */
contract User {

    int private id;
    string private firstName;
    string private lastName;

    /**
     * @dev A traveler who has subscribed to the insurance
     * @param _id user's identifier
     * @param _firstName user's firstname
     * @param _lastName user's lastname
     */
    constructor(int _id, string memory _firstName, string memory _lastName) {
        id = _id;
        firstName = _firstName;
        lastName = _lastName;
    }

    //Getters

    function getID() external view returns(int) {
        return id;
    }

    function getFirstName() external view returns(string memory) {
        return firstName;
    }

    function getLastName() external view returns(string memory) {
        return lastName;
    }

    //Setters

    function setID(int _id) external {
        id = _id;
    }

    function setFirstName(string memory _firstName) external {
        firstName = _firstName;
    }

    function setLastName(string memory _lastName) external {
        lastName = _lastName;
    }
}