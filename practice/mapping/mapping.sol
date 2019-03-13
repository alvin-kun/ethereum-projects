pragma solidity >= 0.4.0 < 0.6.0;

contract MappingExample{
    mapping(address => uint) balance;

    function update(address a, uint newBalance) public {
        balance[a] = newBalance;
    }

    function searchBalance(address a) view public returns(uint) {
        return balance[a];
    }
}