pragma solidity >= 0.4.0 < 0.6.0;

contract TestAddress{
    address _owner;
    uint160 _ownerUint;
    constructor() public {
        _owner = 0xF055775eBD516e7419ae486C1d50C682d4170645;
        _ownerUint = 1372063746939811866332913075223978746532890871365;
    }

    function owner() public view returns (address) {
        return _owner;
    }

    function ownerUint160() public view returns (uint160) {
        return uint160(_owner);
    }

    function ownerUintToAddress() public view returns (address) {
        return address(_ownerUint);
    }

}