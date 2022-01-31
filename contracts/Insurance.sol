// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import './Flight.sol';
import './User.sol';

/**
 * @title Insurance
 * @dev A flight insurance involoving one user and one flight
 */
abstract contract Insurance {
    
    Date private expirationDate;
    User private user;
    Flight private flight;
    uint256 constant eurWeiExchangeRate = 44;

    /**
     * @dev A flight insurance involoving one user and one flight
     * @param _expirationDate insurance's expiration date
     * @param _user insurance's subscriber
     * @param _flight insurance's flight
     */
    constructor(Date _expirationDate, User _user, Flight _flight) {
        expirationDate = _expirationDate;
        user = _user;
        flight = _flight;
    }

    //Getters

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

    function setExpirationDate(Date _expirationDate) external {
        expirationDate = _expirationDate;
    }

    function setUser(User _user) external {
        user = _user;
    }

    function setFlight(Flight _flight) external {
        flight = _flight;
    }

    //Functions
    function refundUser(uint256 amount) public payable returns(bytes memory) {
        address payable _to = (this).getUser().getAddress();
        (bool sent, bytes memory data) = _to.call{value: amount}("");
        require(sent, "Failed to send Ether");
        return data;
    }
}

contract Classic is Insurance
{
    /**
     * @dev A flight insurance involoving one user and one flight
     * @param _expirationDate insurance's expiration date
     * @param _user insurance's subscriber
     * @param _flight insurance's flight
     */
    constructor(Date _expirationDate, User _user, Flight _flight)
    Insurance(_expirationDate, _user, _flight) {}

    function flightCanceled() public payable returns(bytes memory) {
        return refundUser((this).getFlight().getPriceInEuros() * eurWeiExchangeRate / 100000);
    }
}

contract Premium is Insurance
{
    uint256 constant delayIndemnitiyInEuros = 50;
    /**
     * @dev A flight insurance involoving one user and one flight
     * @param _expirationDate insurance's expiration date
     * @param _user insurance's subscriber
     * @param _flight insurance's flight
     */
    constructor(Date _expirationDate, User _user, Flight _flight)
    Insurance(_expirationDate, _user, _flight) {}

    function flightCanceled() public payable returns(bytes memory) {
        return refundUser((this).getFlight().getPriceInEuros() * eurWeiExchangeRate / 100000);
    }

    function flightDelayed(uint256 nbHoursDelay) public payable returns(bytes memory) {
        return refundUser(nbHoursDelay * delayIndemnitiyInEuros * eurWeiExchangeRate / 200000);
    }
}

contract Golden is Insurance
{
    uint256 constant delayIndemnitiyInEuros = 100;
    /**
     * @dev A flight insurance involoving one user and one flight
     * @param _expirationDate insurance's expiration date
     * @param _user insurance's subscriber
     * @param _flight insurance's flight
     */
    constructor(Date _expirationDate, User _user, Flight _flight)
    Insurance(_expirationDate, _user, _flight) {}

    function flightCanceled() public payable returns(bytes memory) {
        return refundUser((this).getFlight().getPriceInEuros() * eurWeiExchangeRate / 100000);
    }

    function flightDelayed(uint256 nbHoursDelay) public payable returns(bytes memory) {
        return refundUser(nbHoursDelay * delayIndemnitiyInEuros * eurWeiExchangeRate / 100000);
    }

    function flightMissed() public payable returns(bytes memory) {
        return refundUser((this).getFlight().getPriceInEuros() * eurWeiExchangeRate / 200000);
    }
}
