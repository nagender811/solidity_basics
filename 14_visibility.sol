pragma solidity >= 0.5.0 < 0.9.0;

contract A
{
    function f1() public pure returns(uint)
    {
        return 1;
    }
    function f2() private pure returns(uint)
    {
        return 2;
    }
    function f3() internal pure returns(uint)
    {
        return 3;
    }
    function f4() external pure returns(uint)
    {
        return 4;
    }
}

contract B is A 
{
    uint public bx = f1();
}

 contract C 
 {
    A obj = new A();   // creating a obj of contract A
    uint public cx = obj.f4();
 }


/*
---------------------------------------------------------
VISIBILITY / ACCESS CONTROL SUMMARY

Visibility|Same Contr.|Derived Contr. |Outside Contr.|Other Files
-------------------------------------------------------------------
public    |      ✓    |        ✓      |        ✓    |      ✓
private   |      ✓    |        ✗      |        ✗    |      ✗
internal  |      ✓    |        ✓      |        ✗    |      ✗
external  |      ✗    |        ✓*     |        ✓    |      ✓

Explanation:
- public   : Can be accessed from anywhere (inside, derived, and outside).
- private  : Accessible only inside the same contract.
- internal : Accessible inside the same contract and derived contracts.
- external : Can be called from outside the contract (and from derived via `this.func()`).

Note:
* `external` functions cannot be called internally without using `this.functionName()`.
---------------------------------------------------------
*/


