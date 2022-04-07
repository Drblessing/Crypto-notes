// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract mycontract {
    address payable public owner = payable(msg.sender);
    event kill_e(address _from);
    event created();

    constructor() {
        emit created();
    }

    modifier restricted() {
        require(
            msg.sender == owner,
            "This function is restricted to the contract's owner"
        );
        _;
    }

    function kill() public restricted {
        emit kill_e(msg.sender);
        selfdestruct(owner);
    }

    function lol() public {
        selfdestruct(owner);
    }
}
