-placeholder token for the multi-sig for the first MVP

## ERC20/ $ALFA Functions:
#### Changing State Data
    - Minting:
        * Mint

    - Burning:
        * Burn
        * BurnFrom

    - Transferring:
        * Transfer
        * Approve
        * TransferFrom
        * DecreaseAllowance
        * IncreaseAllowance

    - Ownable:
        * TransferOwnership
        * RenounceOwnership

    - Pausable:
        * Pause
        * Unpause

#### Reading-Only State Data
    - Contract Data:

        * Name
        * Symbol
        * TotalSupply
        * Decimals
        * Owner
        * Paused
        * Allowance
        * BalanceOf

#### Additional Mechanisms and Methods for potential addition
        * Stake or Lock.
        * Access Control
        * Snapshot
        * Whitelisting addresses

## Multisig frameworks
    * Gnosis safe
        - [Zodiac Tooling)[https://gnosisguild.mirror.xyz/OuhG5s2X5uSVBx1EK4tKPhnUc91Wh9YM0fwSnC8UNcg)
    * PrimeDAO
        - [PrimeDAO](https://medium.com/primedao/introducing-prime-launch-c423e702dda9)


## Parameters and variables
  * simple address <> tokens Mapping
  * stake 1 ETH to unlock 1 Alpha TOKEN
  * treasury function

## Additional Questions
    1) Mint set amount of tokens
        or
       Mint tokens when Eth deposited/staked by member?

    2) Member burns (transfers) tokens to receive $ATH tokens (when $ATH available)
        or
       AthensDAO Airdrops $ATH tokens to all members as per snapshot?

## Current Vision - 100 $ETH goal
### Stakeholders
- non-Members : People not yet affiliated or participating in AthensDAO.
- Members : KYC'ed AthensDAO participants who can donate and stake $ETH. $ALFA token pre-sale eligibility
- ALFA Contract: $ALFA Token Smart Contract
    - ALFA Contract Owner / MultiSig : Member/s who own the ALFA smart contract

### Flow (review this!)
1) Non-member goes through interview and KYC process to become an AthensDAOMember.
2) Member:
    - Stake $ETH into ALFA contract
    - ALFA contract mints (pre-mint) $ALFA tokens for member to claim
        - I.E: Stakes 1 $ETH into $ALFA contract to receive 1 $ALFA token. (1 $ETH = 1 $ALFA)
        - I.E: $ALFA Token to be stored by member for future exchange (when DAO launches) (address of member can also be retrieved if token lost)
3) ALFA Contract stores the donating members' address in contract (for future usage)
4) Once 100 $ETH cap is reached, (contract takes a snapshot of donor address)

## references
[Whitelist contract](https://github.com/AthensLab/whitelist_contract)
