// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title User
 * @dev A traveler who has subscribed to the insurance
 */
contract User {

    int id;
    string firstName;
    string lastName;

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
}
