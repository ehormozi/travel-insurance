// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import './Date.sol';

/**
 * @title Flight
 * @dev A flight
 */
contract Flight {

    string origin;
    string destination;
    Date date;
    uint256 priceInEuros;

    /**
     * @dev A flight
     * @param _origin flights's origin
     * @param _destination flight's destination
     * @param _date flight's date
     * @param _priceInEuros flight's price
     */
    constructor(string memory _origin, string memory _destination, Date _date, uint256 _priceInEuros) {
        origin = _origin;
        destination = _destination;
        date = _date;
        priceInEuros = _priceInEuros;
    }

    //Getters

    function getOrigin() external view returns(string memory) {
        return origin;
    }

    function getDestination() external view returns(string memory) {
        return destination;
    }

    function getDate() external view returns(Date) {
        return date;
    }

    function getPriceInEuros() external view returns(uint256) {
        return priceInEuros;
    }

    //Setters

    function setOrigin(string memory _origin) external {
        origin = _origin;
    }

    function setDestination(string memory _destination) external {
        destination = _destination;
    }

    function setDate(Date _date) external {
        date = _date;
    }

    function setPriceInEuros(uint256 _priceInEuros) external {
        priceInEuros = _priceInEuros;
    }
}
