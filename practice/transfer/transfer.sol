pragma solidity >= 0.4.0 < 0.6.0;

contract PayableKeyword{
    function deposit() public payable{
        address Account2 = 0x14723a09acff6d2a60dcdf7aa4aff308fddc160c;
        Account2.transfer(msg.value);
    }
    function getAccount2Balance() public view returns(uint) {
        address Account2 = 0x14723a09acff6d2a60dcdf7aa4aff308fddc160c;
        return Account2.balance;

    }

    function getOwnerBalance() public view returns (uint) {
        return msg.sender.value;
    }


    
}