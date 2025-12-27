pragma solidity >= 0.5.0 < 0.9.0;

contract ByteArray
{
    // Fixed-size array (bytes1, bytes2, bytes3......bytes32.)
    bytes3 public b3; //3 bytes array
    bytes2 public b2; //2 bytes array

    function setter() public 
    {
        b3='abc';
        b2='a';  // Padding of 0 is added at the end if the value(by which the array is initialized) does not occupy the entire space.
       // b3[0]= 'a' // Error( bytes array cannot be modified.)

    }

    // Dynamic size array (bytes which is shorthand for bytes[])
    bytes public b1 = 'abc';

    function pushElement() public 
    {
        b1.push('d');
    }

    function getElement(uint i) public view returns(bytes1)
    {
        return b1[i];
    }

    function getlength() public view returns(uint)
    {
        return b1.length;
    }
}