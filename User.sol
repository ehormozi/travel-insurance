// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title User
 * @dev A traveler who has subscribed to the insurance
 */
contract User {

    address payable private adr;
    string private firstName;
    string private lastName;

    /**
     * @dev A traveler who has subscribed to the insurance
     * @param _adr user's address
     * @param _firstName user's firstname
     * @param _lastName user's lastname
     */
    constructor(address payable _adr, string memory _firstName, string memory _lastName) {
        adr = _adr;
        firstName = _firstName;
        lastName = _lastName;
    }

    //Getters

    function getAddress() external view returns(address payable) {
        return adr;
    }

    function getFirstName() external view returns(string memory) {
        return firstName;
    }

    function getLastName() external view returns(string memory) {
        return lastName;
    }

    //Setters

    function setAddress(address payable _adr) external {
        adr = _adr;
    }

    function setFirstName(string memory _firstName) external {
        firstName = _firstName;
    }

    function setLastName(string memory _lastName) external {
        lastName = _lastName;
    }

    //Functions

    receive() external payable {}

    fallback() external payable {}
}
