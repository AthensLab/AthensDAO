-placeholder token for the multi-sig for the first MVP

## ERC20/ $ALFA Functions:
- Changing State Data
    Minting:
        * Mint
    Burning:
        * Burn
        * BurnFrom
    Transferring:
        * Transfer
        * Approve
        * TransferFrom
        * DecreaseAllowance
        * IncreaseAllowance
    Ownable:
        * TransferOwnership
        * RenounceOwnership
    Pausable:
        * Pause
        * Unpause
- Reading-Only State Data
    Contract Data:
        * Name
        * Symbol
        * TotalSupply
        * Decimals
        * Owner
        * Paused
        * Allowance
        * BalanceOf

- Additional Mechanisms and Methods for potential addition
        * Stake or Lock.
        * Access Control
        * Snapshot

## Multisig frameworks
    * Gnosis safe
        - [Zodiac Tooling)[https://gnosisguild.mirror.xyz/OuhG5s2X5uSVBx1EK4tKPhnUc91Wh9YM0fwSnC8UNcg)
    * OpenZeppelin Govenor


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
    
    3)