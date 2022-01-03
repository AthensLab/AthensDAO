// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;


//@dev:this is the test version of the AthensDAO Alpha token
//@dev: It is based on the ERC20 OpenZeppelin Template
//@dev: Upgrade / Airdrop to $ATH Token to be added

//@dev:OpenZeppelin imports for remix
//@dev: OpenZeppelin imports for local testing
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Snapshot.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";

contract Alpha is ERC20, ERC20Burnable, Pausable, Ownable {

    constructor() ERC20("Alpha", "ALF") {
      _mint(msg.sender, 150 * 10 ** decimals());
      owner = msg.sender; // setting the owner the contract deployer
    }


//@dev Struct created when $ALPH is transferred to an AthensDAO member address
    struct Holder {
        uint id;
        address to;
        uint amount;
    }
    //@dev Holders searchable by number in which tokens was transferred
    mapping(uint => Holder) public holders;
    uint public nextHolderId;

    mapping(address => bool) whitelistedAddresses;


    modifier onlyWhitelisted() {
        require(whitelisted[msg.sender], 'Account not whitelisted');
        _;
    }

    function addUser(address _addressToWhitelist) public onlyOwner {
        whitelistedAddresses[_addressToWhitelist] = true;
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

//@dev: capture that address in a Struct (Mapping)

//@dev: build a function to retrieve those addresses. (Javascript function to iterate through the amount of Token Holders)
//@dev: perfect "upgrade" - built the Alef conttract such as the owners of the alef token, can call the Upgrade function to burn the ALef and mint the Athens Token.

//@dev Used the token transfer params to create a struct of each Token Transfer from the Owner of the contrac tot a specified member address
    function _beforeTokenTransfer(address from, address to, uint256 amount)
        internal
        whenNotPaused
        override(ERC20, ERC20Snapshot)
    {
        super._beforeTokenTransfer(from, to, amount);

        uint _nextHolderId = nextHolderId;
        Holder storage holder = holders[_nextHolderId];
        holder.id = nextHolderId;
        holder.to = to;
        holder.amount = amount;

        nextHolderId++;
    }

}
