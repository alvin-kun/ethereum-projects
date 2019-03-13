pragma solidity >= 0.4.22 < 0.6.0;

// @title Voting with delegation

contract Ballot {
    //声明结构体，用于表示一个选民
    struct Voter {
        uint weight; // 计票的权重
        bool voted; // 若为真，代表该人已投票
        address delegate; //被委托人
        uint vote; //投票提案的索引
    }

    //提案的类型
    struct Proposal {
        bytes32 name; //简称
        uint voteCount; //得票数

    }

    address public chairperson;

    // 声明状态变量，为每个可能的地址存储一个"Voter"
    mapping(address => Voter) public voters;

    // 一个“Proposal"结构类型的动态数组
    Proposal[] public propsoals;

    // 为proposalName中的每个提案，创建一个新的表决
    constructor(bytes32[] proposalNames) public {
        chairperson = msg.sender;
        voter[chairperson].weight = 1;
        //对于提供的每个提案名称，创建一个新的Proposal对象，并把它添加到数组的末尾
        for(uint i = 0; i < proposalNames.length; i++) {
            // 'Proposal({...})' 创建一个临时Proposals对象
            // 'proposals.push(...)' 将其添加到'proposals'的末尾
            proposals.push(Proposal({
                
            }))
        }
    }
}