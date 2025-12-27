pragma solidity >= 0.5.0 < 0.9.0;

contract Array
{
    uint[4] public arr1 = [10,20,30,40];  //Fixed sized Array

    function setter(uint index, uint value) public
    {
        arr1[index] = value;
    }

    
    function length1() public view returns(uint)
    {
        return arr1.length;   
    }

    uint[] public arr2; // dynamic size array

    function pushElement(uint item) public 
    {
        arr2.push(item);
    } 

    function length2() public view returns(uint)
    {
        return arr2.length;   
    }
    
    function pop() public 
    {
        arr2.pop();
    }
}
