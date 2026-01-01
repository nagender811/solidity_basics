// SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0 < 0.9.0;

contract CrowdFunding{
    mapping (address => uint) public contributors;
    address public manager;
    uint public minimumContribution;
    uint public deadline;
    uint public target;
    uint public raisedAmount;
    uint public noOfContributors;

    constructor(uint _target, uint _deadline){
        target = target;
        deadline = block.timestamp+_deadline;  // 10sec + 3600sec (60*60)
        minimumContribution = 100 wei;
        manager = msg.sender;
    }

    function sendEth() public payable {
        require(block.timestamp < deadline, "Deadline has passed");
        require(msg.value >= minimumContribution, "Minimum Contribution is not met");

        if(contributors[msg.sender] == 0) {
            noOfContributors++;
        }
        contributors[msg.sender]+= msg.value;
        raisedAmount+=msg.value;
    }
}