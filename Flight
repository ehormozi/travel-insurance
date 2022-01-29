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
    int price;

    /**
     * @dev A flight
     * @param _id flights's identifier
     * @param _origin flights's origin
     * @param _destination flight's destination
     * @param _date flight's date
     * @param _price flight's price
     */
    constructor(int _id, string memory _origin, string memory _destination, Date _date, int _price) {
        id = _id;
        origin = _origin;
        destination = _destination;
        date = _date;
        price = _price;
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

    function getPrice() external view returns(int) {
        return price;
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

    function setPrice(int _price) external {
        price = _price;
    }
}
