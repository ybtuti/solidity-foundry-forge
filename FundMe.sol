// SPDX-License-Identifier: MIT


pragma solidity ^0.8.18;

contract FundMe {
   

    function fund() public payable {
    //allow users to send money
    //set min contr
    require(msg.value > 1e18, "You need to spend more than 1 ETH");
    
    }
}