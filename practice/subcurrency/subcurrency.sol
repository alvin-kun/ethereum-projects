pragma solidity ^0.5.0;

contract Coin {
    //关键字"public"让这些变量可以从外部读取
    address public minter;
    mapping (address => uint) public balances;

    //轻客户端可以通过实践针对变化做出高效的反应
    event Sent(address from, address to, uint amount);

    //构造函数
    constructor() public {
        minter = msg.sender;
    }

    function mint(address receiver, uint amount) public {
        require(msg.sender == minter);
        require(amount < 1e60);
        balances[receiver] += amount;
    }

    function send(address receiver, uint amount) public {
        require(amount <= balances[msg.sender], "Insufficient balance");
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        emit Sent(msg.sender, receiver, amount);
    }
}