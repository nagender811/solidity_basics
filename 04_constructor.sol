pragma solidity >= 0.5.0 < 0.9.0;

contract cons
{
    uint public count;

    constructor(uint new_count)
    {
        count = new_count;
    }
}

/* Imp Points about Constructor
    1. Executed only once.
    2. You can create only one constructor and that is optional.
    3. A default constructor is created by the compiler if there is no explicitly defined constructor
*/