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

    address public ALLOWER;

    constructor() ERC20("Alpha", "ALF") {
        _mint(msg.sender, 150 * 10 ** decimals());
        ALLOWER = msg.sender;
    }


//@dev Struct created when $ALPH is transferred to an AthensDAO member address
    struct Member {
        address memberAddress;
        uint amountReceivable;
        bool tokenReceived;
    }
    //@dev Holders searchable by number in which tokens was transferred
    mapping(address => Member) public members;


    mapping(address => bool) public whitelistedAddresses;
    // mapping(address => mapping (address => uint256)) amountWhitelisted;


    modifier onlyWhitelisted() {
        require(whitelistedAddresses[msg.sender], 'Account not whitelistedAddress');
        _;
    }

        /**
     * @dev See {IERC20-approve}.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function approve(address spender, uint256 amount) public override onlyOwner returns (bool) {
        _approve(_msgSender(), spender, amount);
        
        super.approve(spender, amount);

        Member storage member = members[spender];

        member.memberAddress = spender;
        member.amountReceivable = amount;
        member.tokenReceived = false;

        whitelistedAddresses[spender] = true;
        
        return true;
    }

    function tokenClaim() public returns(bool) {
        require(whitelistedAddresses[msg.sender], "This address is not whitelisted"); //onlyWhitelisted

        Member storage member = members[msg.sender];
        member.tokenReceived = true;

        uint amountToReceive = member.amountReceivable;
        member.amountReceivable = 0;
        transferFrom(ALLOWER, msg.sender ,amountToReceive);

        return true;
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
        override(ERC20)
    {
        super._beforeTokenTransfer(from, to, amount);

    }

}
