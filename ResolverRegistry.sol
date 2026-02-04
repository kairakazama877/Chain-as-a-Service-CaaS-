// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ResolverRegistry {
    mapping(bytes32 => bool) public approvedIntent;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function approve(bytes32 intentHash) external {
        require(msg.sender == owner, "NOT_OWNER");
        approvedIntent[intentHash] = true;
    }
}
