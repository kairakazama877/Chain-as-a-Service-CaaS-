// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IVault {
    function release(address payable to, uint256 amount) external;
}

interface IRegistry {
    function approvedIntent(bytes32) external view returns (bool);
}

contract Executor {
    address public vault;
    address public registry;

    constructor(address _vault, address _registry) {
        vault = _vault;
        registry = _registry;
    }

    function execute(bytes32 intentHash, address payable to, uint256 amount) external {
        require(IRegistry(registry).approvedIntent(intentHash), "INVALID_INTENT");
        IVault(vault).release(to, amount);
    }
}
