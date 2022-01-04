// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;


//@dev:this is the test version of the AthensDAOAlpha token
//@dev: It is based on the ERC20 OpenZeppelin Template
//@dev: to be added: mapping of address holders.

//@dev:OpenZeppelin imports for remix

//@dev: OpenZeppelin imports for local testing
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Snapshot.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";

contract Alef is ERC20, ERC20Burnable, ERC20Snapshot, Ownable, Pausable, ERC20Permit {
    constructor() ERC20("Alef", "ALF") ERC20Permit("Alef") {
        _mint(msg.sender, 150 * 10 ** decimals());
    }

    function snapshot() public onlyOwner {
        _snapshot();
    }

//@dev: to map holders of the token
    mapping(bool => address[]) holders;

//@dev: to retrieve holders of the token

      function getHolders() public view returns(address[] memory) {
        return holders[true];
      }

//@dev: Build a transfer function, that emits the address we send the token to.
//@dev: capture that address in a Mapping

//@dev: build a function to retrieve those addresses.
//@dev: perfect "upgrade" - built the Alef conttract such as the owners of the alef token, can call the Upgrade function to burn the ALef and mint the Athens Token.


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
        override(ERC20, ERC20Snapshot)
    {
        super._beforeTokenTransfer(from, to, amount);
    }
}
