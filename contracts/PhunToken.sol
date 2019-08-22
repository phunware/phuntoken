pragma solidity ^0.5.0;

import "@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Pausable.sol";


contract PhunToken is ERC20, ERC20Detailed, ERC20Burnable, ERC20Pausable {

    // modify token name
    string public constant _name = "Phun";
    // modify token symbol
    string public constant _symbol = "PHUN";
    // modify token decimals
    uint8 public constant _decimals = 18;
    // modify initial token supply
    uint256 public constant INITIAL_SUPPLY = 10000000000 * (10 ** uint256(_decimals)); // 10B tokens

    constructor () public ERC20Detailed(_name, _symbol, _decimals) {
        _mint(msg.sender, INITIAL_SUPPLY);
    }

}
