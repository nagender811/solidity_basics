pragma solidity >= 0.5.0 < 0.9.0;

contract State
{
    uint public age;     //declaration

    /* age=10( can't initialize like this, give error)

    To change the default values of the state variable
    1. Using the contracts constructor.
    2. Initializing the variable at declaration.
    3. Using the setter function.
     */

    // constructor() public
    // {
    //     age=10;
    // }

    function setAge() public
    {
        age=10;
    }
}