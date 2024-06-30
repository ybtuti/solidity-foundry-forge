// Layout of Contract:
// version
// imports
// errors
// interfaces, libraries, contracts
// Type declarations
// State variables
// Events
// Modifiers
// Functions

// Layout of Functions:
// constructor
// receive function (if exists)
// fallback function (if exists)
// external
// public
// internal
// private
// view & pure functions

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

/**
 * @title Raffle
 * @author 0xodus
 * @notice This contract creates a raffle
 * @dev Impliment chainlink VRF
 */
contract Raffle {
    /* Errors */
    error Raffle__SendMoreToEnterRaffle();

    uint256 private immutable i_entranceFee;

    constructor(uint256 entranceFee) {
        i_entranceFee = entranceFee;
    }

    function enterRaffle() public payable {
        //require(msg.value >= i_entranceFee, "Not Enough entrance fee");
        if (msg.value < i_entranceFee) {
            revert Raffle__SendMoreToEnterRaffle();
        }
        //require(msg.value >= i_entranceFee, SendMoreToEnterRaffle());
    }

    function pickWinner() public {}

    /** Getter functions */
    function getEntranceFee() public view returns (uint256) {
        return i_entranceFee;
    }
}
