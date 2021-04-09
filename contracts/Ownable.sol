// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.7.0;

contract Ownable {
    address payable public owner;

     constructor() {
        
        // run the constructor of all parent contracts
        super;
        // the person address who deployed the contract
        owner = tx.origin; 
        /* 
            the address of the origin, when a smart contract call another 
            smart contract. msg.send will be the addres of the contract
            but the tx.origin, will be the address of who call the first contract
            DANGER DO NOT USE tx.origin IN PRODUCTION! it is not safe

        */
    }

    // modifier to allow only who deployed the contract to run
    modifier onlyOwner {
        require(tx.origin == owner, "Only the owner can run this");
        _;
    }

}