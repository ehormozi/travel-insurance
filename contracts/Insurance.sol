// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import './Flight.sol';
import './User.sol';

/**
 * @title Insurance
 * @dev A flight insurance involoving one user and one flight
 */
abstract contract Insurance {
    
    int private id;
    Date private expirationDate;
    User private user;
    Flight private flight;

    /**
     * @dev A flight insurance involoving one user and one flight
     * @param _id insurance's unique identifier
     * @param _expirationDate insurance's expiration date
     * @param _user insurance's subscriber
     * @param _flight insurance's flight
     */
    constructor(int _id, Date _expirationDate, User _user, Flight _flight) {
        id = _id;
        expirationDate = _expirationDate;
        user = _user;
        flight = _flight;
    }

    //Getters

    function getID() external view returns(int) {
        return id;
    }

    function getExpirationDate() external view returns(Date) {
        return expirationDate;
    }

    function getUser() external view returns(User) {
        return user;
    }

    function getFlight() external view returns(Flight) {
        return flight;
    }

    //Setters

    function setID(int _id) external {
        id = _id;
    }

    function setExpirationDate(Date _expirationDate) external {
        expirationDate = _expirationDate;
    }

    function setUser(User _user) external {
        user = _user;
    }

    function setFlight(Flight _flight) external {
        flight = _flight;
    }
    
    //Search a fly 
    /*
    function SearhFly(string departureVille, int day, int year, int month)
    {
    }

    function checkContractValidity(int monthEnd, int dayEnd, int yearEnd;)
    {
    }

    function payFly()
    {
    }
    */
}
/*
contract Classic is  flightinsurance
{

}

contract Premium is  flightinsurance
{

}

contract Golden is  flightinsurance
{

}
*/