// SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0 < 0.9.0;

contract Demo 
{
    string[] public student = ['Satish', 'Upendra', 'Piyush'];

    function mem() public view 
    {
        string[] memory s1 = student;
        s1[0] = 'Nagender';
    }

    function sto() public 
    {
        string[] storage s1 = student;
        s1[0] = 'Nagender';
    }
}