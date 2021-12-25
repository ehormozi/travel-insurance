// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 */
contract abstract flightinsurance {
    private id;
    private int monthEnd;
    private int dayEnd;
    private int yearEnd;
    private user  user;    
    private fly fly;

    
    struct user  {
        int id;
        string Familyname;
        string Firstname;
    }
    
    mapping (uint => user) user;
    


    /*
    struct fly
    {
        int id;
        string destination;
        string departure;
        int dateDeparture;
        int month ; //maybe string
        int year ;

    }
    */

     //constructor
    function flightInsurance(user, fly)
    {
        this.user = user;
        this.fly = fly;
    }

    //setter for user
    function set(fly fly) public 
    {
      this.fly = fly;
    }

    //getter for user
   function get() public view returns (user) 
   {
      return this.user;
   }

    //getter for fly
    function get() public view returns (fly) 
    {
      return this.fly;
    }

    //Search a fly 
    function SearhFly(string departureVille, int day, int year, int month)
    {


    }

    function checkContractValidity(int monthEnd, int dayEnd, int yearEnd;)
    {

    }

    function payFly()
    {

    }
}

contract Classic is  flightinsurance
{

}

contract Premium is  flightinsurance
{

}

contract Golden is  flightinsurance
{

}
