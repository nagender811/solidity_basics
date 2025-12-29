// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 < 0.9.0;

contract Demo
{
    //Mapping
    // mapping (uint=>string) public roll_no;

    // function setter(uint keys,string memory value) public 
    // {
    //     roll_no[keys] = value;
    // }

    //Mapping with struct

    struct Student{
        string name;
        uint class;
    }

    mapping (uint=>Student) public data;

    function setter(uint _roll, string memory _name, uint _class) public {
        data[_roll] = Student(_name, _class);
    }
}

/* Imp Points
    1. The key cannot be types mapping, dynamic array, enum and struct.
    2. The values can be of any type.
    3. Mappings are always stored in storage irrespective of whether they are decalred in contract storage or not.
*/