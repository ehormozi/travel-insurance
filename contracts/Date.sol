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
        
        assert (_year >= year);
        
        year = _year;
    }

    function setMonth(int _month) external 
    {
    
        assert( _month >= 1 && _month <= 12);
        
        month = _month;
    }

    function setDay(int _day) external 
    {
    
        assert( _day >= 1) ;
     
        if ( month == 2)
        {
        
            if (year % 4 == 0 && year % 100 != 0 || year % 400 == 0)
            {
                assert(_day <= 29);
            }
            else
            {
                assert(_day <= 28);
            }
        }
        else if (month == 1 || month == 3 || month ==  5 || month == 7 || month == 8 || month == 10 || month == 12)
        {
            assert(_day <= 31);
        }
        else
        {
            assert(_day <= 30);    
        }

        day = _day;
    }

    function setHour(int _hour) external {
        
        assert( _hour >= 0 && _hour <=23);
        
        hour = _hour;
    }

    function setMinute(int _minute) external 
    {
        assert(_minute >= 0 && _minute <= 59);
        
        minute = _minute;
    }
}
