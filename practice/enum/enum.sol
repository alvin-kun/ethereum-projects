pragma solidity >= 0.4.0 < 0.6.0;

contract test{
    enum ActionChoices {Goleft, Goright, Gostraight, Sitstill}
    ActionChoices _choice;
    ActionChoices constant defaultChoice = ActionChoices.Gostraight;

    function setGostraight(ActionChoices choice) public {
        _choice = choice;
    }

    function getChoice() public view returns(ActionChoices) {
        return _choice;
    }

    function getDefaultChoice() public pure returns(uint) {
        return uint(defaultChoice);
    }

}