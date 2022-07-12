## Specification for Athens TOKEN



## ERC20
* total supply 10 million or less.
* 50% minted at launch and stored in treasury.

* out of those 5 million that are minted, 2.5 million are then distributed to community members (decide a distribution mechanism - write an whitelist airdrop function )
* 2.5 million are then given to investors depending on negotiations to investors. -We thus need to specify a mechanism to do so- Would this still be the whitelist?


## goals
* incentivise and reward people
* govern and control the DAOs
* Avoid Plutocracy - explain the mechanism here diminishing rate of return - in principle we should use lazy consensus and quadratic voting, in the sense that the more tokens you have, then your voting power decreases- no single entity should have more than 20% of all available #ATH (decide a curve or the diminishing rate of return)


## Governance in AthensDAO
* What are the governance proposals that the ATH can drive?
    - vote for removing committee members in a general assembly
    - staked in proposals for investments: a non-member can buy ATH to stake them so that then they can propose investment opportunities to the committee
    - Explore the potential to lock ATH and provide yield / liquidity. - yield farming mechanism.
        - example: "Curve" [Curve](https://curve.fi/) "Yearn"[Yearn](https://yearn.finance/) "Compound" [Compound](https://compound.finance/)



* Governance templates for fungible tokens? Aragon or Colony?
  - examine integration with Aragon and/or Colony


## Possible Relationships

  -Questions on possible relationship with STAKE

* Stake #STK to get a percentage of #ATH
* Staking mechanism should be on the #STK side - the returns in #ATH are given to the fund
* Stakeholders List and Persona workshop
* Stablecoin relationship - onboard #PASOK holders- diagram the process- stablecoin onboarding is a service that is valuable on its own.
* Stable coin mechanisms in general - FIAT backed stablecoin such as USDC, USDT

## Tokenomics
Link to diagram for how the cryptoeconomics work.


## Functions
### ERC20
* Minting
* Burning
* Locking



### ERC20 Mechanisms
* Staking [use this instead of burning the tokens]

### ERC2222


### DAO
* Proposal making
* Voting


## security mechanisms

* review and add: patterns


## Strategies for maintenance
https://docs.openzeppelin.com/contracts/4.x/api/proxy#TransparentUpgradeableProxy
https://docs.openzeppelin.com/contracts/4.x/api/token/erc20#ERC20Votes
https://docs.openzeppelin.com/contracts/4.x/api/token/erc20#ERC20Permit
https://docs.openzeppelin.com/contracts/4.x/api/proxy#UUPSUpgradeable
https://docs.openzeppelin.com/contracts/4.x/api/token/erc20#ERC20Burnable

https://docs.openzeppelin.com/contracts/4.x/extending-contracts


## DAO Services Breakdown
* Token Services
  - Token Design
      * ERC20
      * ERC2222
  - Token Distribution
      * Pre-Mint
      * Mint as needed
  - Market Making
      * Provide liquidity (for yield rewards)

* Governance
  - Proposal Discussion
  - Voter Delegation
  - Voting
  - Proposal Execution

* Treasury Management
  - Asset Allocation
  - Payments
  - Financial Reporting

* Risk Management
  - Simulations
  - Asset Analysis

* Growth
  - Education
  - Events
  - Research
  - User Onboarding

* Community
  - Event Sponsorship
  - Hackathons
  - Membership
  - Meme Contests
  - Communication/ Translations

* Operations
  - Fullstack Platforms
  - Project Management
  - Legal

* Development
  - Security Audits
  - Grants
  - Bounties
