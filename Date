// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Date
 * @dev A date
 */
contract Date {

    int private year;
    int private month;
    int private day;
    int private hour;
    int private minute;

    /**
     * @dev A date
     * @param _year date's year
     * @param _month date's month
     * @param _day date's day
     * @param _hour date's hour
     * @param _minute date's minute
     */
    constructor(int _year, int _month, int _day, int _hour, int _minute) {
        year = _year;
        month = _month;
        day = _day;
        hour = _hour;
        minute = _minute;
    }

    //Getters

    function getYear() external view returns(int) {
        return year;
    }

    function getMonth() external view returns(int) {
        return month;
    }

    function getDay() external view returns(int) {
        return day;
    }

    function getHour() external view returns(int) {
        return hour;
    }

    function getMinute() external view returns(int) {
        return minute;
    }

    //Setters

    function setYear(int _year) external {
        year = _year;
    }

    function setMonth(int _month) external {
        month = _month;
    }

    function setDay(int _day) external {
        day = _day;
    }

    function setHour(int _hour) external {
        hour = _hour;
    }

    function setMinute(int _minute) external {
        minute = _minute;
    }
}
