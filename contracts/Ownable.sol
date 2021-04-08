// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.7.0;

contract Ownable {
    address payable public owner;

     constructor() {
        
        // run the constructor of all parent contracts
        super;
        // the person address who deployed the contract
        owner = msg.sender;
    }

    // modifier to allow only who deployed the contract to run
    modifier onlyOwner {
        require(msg.sender == owner, "Only the owner can run this");
        _;
    }

}