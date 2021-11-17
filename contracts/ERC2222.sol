// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

//@dev: this is essenially an index token


//@dev: openzeppeling templates.


//import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
//import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
//import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
//import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
//import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/draft-ERC20PermitUpgradeable.sol";
//import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20.sol"

//@dev: insert OpenZeppelin code for remix Testing

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/IERC20.sol"


abstract contract ERC2222 is IERC2222, ERC20 {

  //@dev: check SafeMath for 0.8.2 solidity.


  address public fundsToken;
  uint256 public fundsTokenBalance;

//@dev: constructor

function _distributeFunds
function withdrawFunds
function _prepareWithdraw
function transfer
function withdrawableFundsOf
function withdrawnFundsOf

function accumulativeFundsOf

function mint



}
