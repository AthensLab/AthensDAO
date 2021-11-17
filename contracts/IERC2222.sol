// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

//@dev: this is the 2222 Interface
//@dev: complete and test with interim contract.

interface IFundsDistributionToken {

	/**
	 * @dev Returns the total amount of funds a given address is able to withdraw currently.
	 * @param owner Address of FundsDistributionToken holder
	 * @return A uint256 representing the available funds for a given account
	 */
	function withdrawableFundsOf(address owner) external view returns (uint256);

	/**
	 * @dev Withdraws all available funds for a FundsDistributionToken holder.
	 */
	function withdrawFunds() external;

	/**
	 * @dev This event emits when new funds are distributed
	 * @param by the address of the sender who distributed funds
	 * @param fundsDistributed the amount of funds received for distribution
	 */
	event FundsDistributed(address indexed by, uint256 fundsDistributed);

	/**
	 * @dev This event emits when distributed funds are withdrawn by a token holder.
	 * @param by the address of the receiver of funds
	 * @param fundsWithdrawn the amount of funds that were withdrawn
	 */
	event FundsWithdrawn(address indexed by, uint256 fundsWithdrawn);
}


interface IFundsDistributionTokenOptional {

	/**
	 * @notice Deposits funds to this contract.
	 * The deposited funds may be distributed to other accounts.
	 */
	function depositFunds() external payable;

	/**
	 * @notice Returns the total amount of funds that have been deposited to this contract but not yet distributed.
	 */
	function undistributedFunds() external view returns(uint256);

	/**
	 * @notice Returns the total amount of funds that have been distributed.
	 */
	function distributedFunds() external view returns(uint256);

	/**
	 * @notice Distributes undistributed funds to accounts.
	 */
	function distributeFunds() external;

	/**
	 * @notice Deposits and distributes funds to accounts.
	 * @param from The source of the funds.
	 */
	function depositAndDistributeFunds(address from) external payable;

	/**
	 * @dev This event MUST emit when funds are deposited to this contract.
	 * @param by the address of the sender of who deposited funds.
	 * @param fundsDeposited The amount of distributed funds.
	 */
	event FundsDeposited(address indexed by, uint256 fundsDeposited);
}
