// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title Token42
 * @dev Token ERC-20 / BEP-20 avec supply fixe de 42 millions
 */
contract Token42 is ERC20 {

    address public owner;
    uint256 public constant MAX_SUPPLY = 42_000_000 * 10 ** 18;

    modifier onlyOwner() {
        require(msg.sender == owner, "Token42: not owner");
        _;
    }

    constructor() ERC20("Token42", "TK42") {
        owner = msg.sender;
        _mint(msg.sender, MAX_SUPPLY);
    }

    function mint(address to, uint256 amount) public onlyOwner {
        require(totalSupply() + amount <= MAX_SUPPLY, "Max supply atteint");
        _mint(to, amount);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}