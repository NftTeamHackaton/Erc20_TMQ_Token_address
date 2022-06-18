// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.7.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Token is ERC20 {
    constructor() 
        ERC20("TooManyQuestion", "TMQ") {
        // ERC20 tokens have 18 decimals 
        // number of tokens minted = n * 10^18
        uint256 n = 10000000;
        _mint(msg.sender, n * 10**uint(decimals()));
    }
}