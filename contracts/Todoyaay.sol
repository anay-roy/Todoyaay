//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.9;

contract Todoyaay {
    uint256 public _idUser;
    address public ownerOfContract;

    address[] public creators;
    string[] public message;
    uint256[] public messageID;

    struct ToDoListApp {
        address account;
        uint256 userID;
        string message;
        bool completed;
    }

    event ToDoevent(
        address indexed account,
        uint256 indexed userID,
        string message,
        bool completed
    );

    mapping(address => ToDoListApp) public toDoListApp;

    constructor() {
        ownerOfContract = msg.sender;
    }

    function inc() internal {
        _idUser++;
    }

    function createList(string calldata _message) external {
        inc();
        uint256 idNumber = _idUser;
        ToDoListApp storage toDo = toDoListApp[msg.sender];

        toDo.account = msg.sender;
        toDo.message = _message;
        toDo.completed = false;
        toDo.userID = idNumber;

        creators.push(msg.sender);
        message.push(_message);
        messageID.push(idNumber);
    }
}
