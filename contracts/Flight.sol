// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Flight
 * @dev A flight
 */
contract Flight {

    int id;
    string origin;
    string destination;
    /*Date*/string date;

    /**
     * @dev A flight
     * @param _id flights's identifier
     * @param _origin flights's origin
     * @param _destination flight's destination
     * @param _date flight's date
     */
    constructor(int _id, string memory _origin, string memory _destination, /*Date*/string memory _date) {
        id = _id;
        origin = _origin;
        destination = _destination;
        date = _date;
    }
}
