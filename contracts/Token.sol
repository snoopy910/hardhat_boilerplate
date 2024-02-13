// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

// This is the main building block for smart contracts
contract Token {
    // Some string type variables to identify the token
    string public name = "My Hardhat Token";
    string public symbol = "MHT";

    // The fixed amount of tokens, stored in an unasigned integer type variable
    uint256 public totalSupply = 1000000;

    // An address type variable is used to store ethereum accounts
    address public owner;

    // A mapping is a key/value map, here we store each account's balance
    mapping(address => uint256) balances;

    // The transfer event helps off-chain applications understand what happens within your contract
    event Transfer(address indexed _from, address indexed _to, uint256 _value);

    // Contract initialization
    constructor() {
        // The total supply is assigned to the transaction sender, which is the account that is deploying the contract
        balances[msg.sender] = totalSupply;
        owner = msg.sender;
    }

    /**
     * A function to transfer tokens
     *
     * The 'external' modifier makes a function *only* callable from *outside* the contract
     */
    function transfer(address to, uint256 amount) external {
        // Check if the transaction sender has enough tokens
        // If `require`'s first argument evaluates to `false` then the transaction will revert
        require(balances[msg.sender] >= amount, "Not enough tokens");

        // Transfer the amount
        balances[msg.sender] -= amount;
        balances[to] += amount;

        // Notify off-chain application of the transfer
        emit Transfer(msg.sender, to, amount);
    }

    /**
     * Read only function to retrieve the token valance of a given account
     *
     * The `view` modifier indicates that it doesn't modify the contract's state, which allows us to call
     * it without executing transaction
     */
    function balanceOf(address account) external view returns (uint256) {
        return balances[account];
    }
}
