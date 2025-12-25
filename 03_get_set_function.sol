pragma solidity >= 0.5.0 < 0.9.0;

contract getSet
{
    uint public age = 10;

    // if we set state variable as public we don't have to create a getter function 

    // function getter() public view returns(uint)
    // {
    //     return age;
    // }

    function setter(uint newAge) public 
    {
        // age = age+1;
        age = newAge;
    }

    /*Imp Points
        1. When you call a setter function it creates a transaction that needs to be mined and costs gas because it changes the blockchain. vice versa for getter function.

        2. When you declare a public state variable a getter function is automatically created.

        3. By default variable visibility is private.
    */
}