// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CoinTransfer {
    mapping(address => uint256) public balances;

    // Event for Transfer
    event Transfer(address indexed from, address indexed to, uint256 value);

    constructor() {
        balances[msg.sender] = 1000;  // Initial balance of the contract creator
    }

    // Function to transfer coins
    function transfer(address recipient, uint256 amount) public returns (bool) {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        balances[recipient] += amount;

        emit Transfer(msg.sender, recipient, amount);
        return true;
    }

    // Function to get the balance of an address
    function getBalance(address account) public view returns (uint256) {
        return balances[account];
    }
}
