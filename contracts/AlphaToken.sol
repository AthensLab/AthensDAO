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
        _mint(msg.sender, 150 * 1); //10 ** decimals());
        ALLOWER = msg.sender;
    }

//@dev: Member struct created when Owner approves address with allowance amount
    struct Member {
        address memberAddress;
        uint amountReceivable;
        bool tokenReceived;
    }
    mapping(address => Member) public members;

//@dev: Check if address whitelisted or not
    mapping(address => bool) public whitelistedAddresses;

//@dev: Array to save addresses when approve() called
    address[] public toReceiveTokens;

    modifier onlyWhitelisted() {
        require(whitelistedAddresses[msg.sender], 'Account not whitelistedAddress');
        _;
    }

//@dev: override approve() from ERC20
//@dev: Owner calls approve() on Address and Amount, which is saved in Members struct
//@dev: Address also whitelisted
//@dev: Address added toReceiveTokens array
    function approve(address spender, uint256 amount) public override onlyOwner returns (bool) {
        _approve(_msgSender(), spender, amount);

        super.approve(spender, amount);

        Member storage member = members[spender];

        member.memberAddress = spender;
        member.amountReceivable = amount;
        member.tokenReceived = false;

        whitelistedAddresses[spender] = true;

        toReceiveTokens.push(spender);

        return true;
    }
//@dev: View the array of addresses which can claim tokens
    function viewToReceiveTokens() public view returns(address[] memory) {
        return toReceiveTokens;
    }

//@dev: Whitelisted member can call tokenClaim to receive
//@dev:the amount of tokens that was allowed to them by the ALLOWER(owner) for donating ETH

    function tokenClaim() public returns(bool) {
        require(whitelistedAddresses[msg.sender], "This address is not whitelisted"); //onlyWhitelisted

        Member storage member = members[msg.sender];

        require(member.amountReceivable > 0, "Not enough allowance to claim");

        member.tokenReceived = true;

        uint amountToReceive = member.amountReceivable;
        member.amountReceivable = 0;
        transferFrom(ALLOWER, msg.sender ,amountToReceive);

        // To remove address from toReceiveTokens array

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
//@dev: perfect "upgrade" - built the Alfa conttract such as the owners of the Alpha token, can call the Upgrade function to burn the Alpha and mint the Athens Token.
//@dev: Used the token transfer params to create a struct of each Token Transfer from the Owner of the contract to a specified member address
    function _beforeTokenTransfer(address from, address to, uint256 amount)
        internal
        whenNotPaused
        override(ERC20)
    {
        super._beforeTokenTransfer(from, to, amount);

    }

}
