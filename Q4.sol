pragma solidity ^0.5.1;

contract FundManager{

    address public admin;
    uint public specifiedAmount;
    uint private totalAmount;

    constructor() public{
        admin = msg.sender;
    }

    function sendMoney() public payable{
        require(msg.sender == admin);
        totalAmount = msg.value;
    }

    function maxAmount (uint amount) public payable{
        require(msg.sender == admin);
        specifiedAmount = amount;

    }

    function enterAmount (uint withdrawAmount) public {
        require(withdrawAmount<= specifiedAmount,"Amount limit exceeded");
        require(withdrawAmount <= totalAmount,"Balance insufficient");
        msg.sender.transfer(withdrawAmount);
    }
}