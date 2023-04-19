//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.9;

contract Todoyaay {
    uint256 public _idUser;
    address public ownerOfContract;

    address[] public creators;
    string[] public message;
    uint256[] public messageID;

    struct todoListApp {
        address account;
        uint256 userID;
        string message;
        bool completed;
    }
}
