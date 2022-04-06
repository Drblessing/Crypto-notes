pragma solidity ^0.8.10;

contract example {
    address contractOwner;

    constructor() {
        contractOwner = msg.sender;
    }
}
