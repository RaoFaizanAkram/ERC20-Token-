//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
contract TOkenCapped is ERC20Capped {
    
    constructor() ERC20("Capped Token","CTP") ERC20Capped(10000000000 * (10 ** uint256(decimals()))) {
      
    }
      function mint(address account, uint256 amount) public  {
        require(totalSupply() + amount <= cap(), "ERC20Capped: cap exceeded");
        super._mint(account, amount);
    }
} 