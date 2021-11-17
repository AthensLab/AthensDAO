## Specifications

* A Stake and Funds distribution token.
* Other descriptions available?


## Funds Distribution

* [Funds Distribution token standard - ERC2222](https://github.com/ethereum/EIPs/issues/2222)



## Distribution Curve

* Avoid Plutocracy -
* Mathematics - diminishing rate of retturn

## architecture
* create an abstract contract and an Interface
* use the appropriate OpenZeppelin Contracts [explain them in the documentation here]
* inherit the abstract contract and the interface



## functions
// separate here in mandatory to be ERC2222 and optional, i.e our contribution.
* Minting
  When exchanged for funds deposited in the treasury of the DAO
* Burning
  When redeemed for stake in the funds deposited in the treasury of the DAOs
* Staking
  Minimum time
  Penalty when withdrawn early - At least a years
* Transferability within the DAO ?
  How does one transfer the token within the DAO?
  Mapping against an NFT identity - KYC?
* Internal maths for re-calculating shares, re-balancing tokens vs shares in the funding treasury

- Mandatory features
* Withdraw funds
* communicate withdrawable funds
* communicate Funds Distributed
* communicate Funds Withdrawn


## Security features
* permission / access control mechanism for addresses to own PSK: does this take place manually or automatically?

## Optional features

* Internal only Liquidity protocol and pool



## sources and references
  - s t a n d a r d s
* [ERC2222 - funds distribution token](https://github.com/ethereum/EIPs/issues/2222)
* [ERC2222 - Reference implementation](https://github.com/atpar/funds-distribution-token)
* [ERC1411 - Security token](https://github.com/ethereum/EIPs/issues/1411)
  - c o d e
* [MapleToken](https://github.com/maple-labs/maple-token)
* [MapleToken explanation](https://maplefinance.gitbook.io/maple/protocol/maple-token-holders)
* [Flama Staking shares](https://github.com/FlamaToken/Staking/)
