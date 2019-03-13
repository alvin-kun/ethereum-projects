pragma solidity >= 0.4.0 < 0.6.0;

contract Person{
    uint _weight;
    uint private _height;
    uint internal _age;
    uint public _money;

    function test() public view returns (uint) {
        return _weight;
    }

    function test1() public view returns (uint) {
        return _height;
        
    }

    function test2() public view returns (uint) {
        return _age;
    }

    function test3() public view returns (uint) {
        return _money;
    }



}