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

/*
//@dev: mapping to show the addresses who hold the tokens//@dev: to map holders of the token
    mapping(bool => address[]) holders;

//@dev: to retrieve holders of the token
//@dev: we need to change this to include a mapping of addresses to number of tokens.

      function getHolders() public view returns(address[] memory) {
        return holders[true];
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
