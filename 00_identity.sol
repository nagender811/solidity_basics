pragma solidity >= 0.5.0 < 0.9.0;

contract Identity
{
    string name;
    uint age;

    constructor() public
    {
        name="Nagender";
        age=22;
    }

    function getName() view public returns(string memory)
    {
        return name;
    }
    function getAge() view public returns(uint)
    {
        return age;
    }
}
    