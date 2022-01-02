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

    mapping(bool => address[]) holders;

    function getHolders() public view returns(address[] memory) {
        return holders[true];
    }
    

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
