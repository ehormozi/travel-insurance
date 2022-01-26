// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import './Date.sol';

/**
 * @title Flight
 * @dev A flight
 */
contract Flight {

    int id;
    string origin;
    string destination;
    Date date;

    /**
     * @dev A flight
     * @param _id flights's identifier
     * @param _origin flights's origin
     * @param _destination flight's destination
     * @param _date flight's date
     */
    constructor(int _id, string memory _origin, string memory _destination, Date _date) {
        id = _id;
        origin = _origin;
        destination = _destination;
        date = _date;
    }

    //Getters

    function getID() external view returns(int) {
        return id;
    }

    function getOrigin() external view returns(string memory) {
        return origin;
    }

    function getDestination() external view returns(string memory) {
        return destination;
    }

    function getDate() external view returns(Date) {
        return date;
    }

    //Setters

    function setID(int _id) external {
        id = _id;
    }

    function setOrigin(string memory _origin) external {
        origin = _origin;
    }

    function setDestination(string memory _destination) external {
        destination = _destination;
    }

    function setDate(Date _date) external {
        date = _date;
    }

}
