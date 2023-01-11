// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Ownable {
    address public collectibleOwner;

    constructor() {
        collectibleOwner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == collectibleOwner, "Only onwer can call.");
        _;
    }
}