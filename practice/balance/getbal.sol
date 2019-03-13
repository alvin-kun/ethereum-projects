pragma solidity >= 0.4.0 < 0.6.0;

contract addressBalance{
    function getBalance(address addr) public view returns (uint) {
        return addr.balance;
    }
}