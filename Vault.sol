// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Vault {
    address public executor;

    constructor(address _executor) {
        executor = _executor;
    }

    receive() external payable {}

    function release(address payable to, uint256 amount) external {
        require(msg.sender == executor, "NOT_EXECUTOR");
        to.transfer(amount);
    }
}
