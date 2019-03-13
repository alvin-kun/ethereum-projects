pragma solidity >= 0.4.0 < 0.6.0;

contract C {
    bytes7 public hexName = 0x77616E676B756E;
    string public name = "wangkun";
    string public comString = "a!+&3543w无";

    bytes public newname = new bytes(2);

    function hexNameByteLength() public view returns (uint) {
        return hexName.length;
    }

    function nameBytes() public view returns (bytes memory) {
        return bytes(name);
    }

    function nameLength() public view returns (uint) {
        return bytes(name).length;
    }

    function setNameFirstByteForW(bytes1 s) public  {
        bytes(name)[0] = s;
    }
    function setNameFirstByteWithString(string memory s) public {
        bytes(name)[0] = bytes(s)[0];
    }
    
    function comStringBytes() public view returns (bytes memory) {
        return bytes(comString);
    } 
    
    function comStringLength() public view returns (uint) {
        return bytes(comString).length;
    }

    function setNewnameLength(uint len) public {
        newname.length = len;
    }

    function newnameLength() public view returns(uint) {
        return newname.length;
    }

    function pushAByte(byte b) public {
        newname.push(b);
    }


}