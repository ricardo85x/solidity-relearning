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


/// @title A parking Lot contract
/// @author Ricardo
/// @notice client pay to park, park lot got a owner, and could get full
contract ParkingLot is Ownable {


    // track if parking lot is full
    enum LotStatus { VACANT, FULL }
    LotStatus public currentStatus;


    // Events to frontend
    event Occupy(address _address, uint _value); 

    constructor() {
        // the person address who deployed the contract
        owner = msg.sender;
        // set current status
        currentStatus = LotStatus.VACANT;
    }

    // modifier to check vacancy
    modifier checkVacancy {
        require(currentStatus == LotStatus.VACANT, "Sorry, parking lot is Full");
        _;
    }

    // modifier to check ammount
    modifier checkAmmount(uint _amount) {
        require(msg.value >= _amount, "Sorry, you have to pay 0.001 to park" );
        _;
    }
 
    // parking function, where the client pay to park
    function park() payable external checkVacancy checkAmmount(0.001 ether) {
        currentStatus = LotStatus.FULL;
        owner.transfer(msg.value);
        // send the event to frontend
        emit Occupy(msg.sender, msg.value);
    }

    // set park lot available
    function markAvailable() external onlyOwner {
        currentStatus = LotStatus.VACANT;
    }



}