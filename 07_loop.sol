pragma solidity >= 0.5.0 < 0.9.0;

contract Loops
{
    uint[3] public arr;
    uint public count;

    function loop() public 
    {
        // while loop
       /* while (count<arr.length)
        {
            arr[count] = count;
            count++;
        }

        // do while loop
        do{
            arr[count] = count;
            count++;
        } while (count<arr.length);

        */

        for(uint i=count; i<arr.length; i++)
        {
            arr[count] = count;
            count++;
        }

    }

}