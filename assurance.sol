// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 */
contract abstract flightinsurance {
    
    int monthEnd;
    int dayEnd;
    int yearEnd;

    //arrayOfUser
    struct user  {
        int id;
        string Familyname;
        string Firstname;
    }

    user[] public users;

    //list of flies
    struct fly
    {
        int id;
        string destination;
        string departure;
        int dateDeparture;
        int month ; //maybe string
        int year ;

    }
    
    fly[] flies ;

    function SearhFly()
    {


    }


    function AffectuserToFly(user, fly)
    {

    }
}

contract Classic is flight
{

}

contract Premium is flight
{

}

contract Golden is flight
{

}
