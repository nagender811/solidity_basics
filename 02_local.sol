pragma solidity >= 0.5.0 < 0.9.0;

contract local
{
    string name = "Nagender"; // state variable (memory keyword can't be used at contract level.
    function store() pure public returns(uint)
    {
        uint age = 22; // local variable // Declared inside function are kept on the stack, not on storage(Don't use gas)
        string memory college ="Ignou"; // can't initialize without memory because there are some types that reference the storage by default.
        return age;
    }
}