// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Date
 * @dev A date
 */
contract Date {

    int year;
    int month;
    int day;
    int hour;
    int minute;

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
}
