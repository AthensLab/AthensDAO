// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Alpha is ERC20, ERC20Burnable, Pausable, Ownable {
    
    constructor() ERC20("Alpha", "ALP") {}

/*              Whitelist Mechanism
    mapping(address => bool) public whitelisted;

    function whitelist(address member) public onlyOwner {
        whitelisted[member] = true;
    }

    modifier onlyWhitelisted() {
        require(whitelisted[msg.sender], 'Account not whitelisted');
        _;
    }    
*/

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function _beforeTokenTransfer(address from, address to, uint256 amount)
        internal
        whenNotPaused
        override
    {
        super._beforeTokenTransfer(from, to, amount);
    }
  
}
