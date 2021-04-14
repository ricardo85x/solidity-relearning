// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.7.0;

import "./Ownable.sol";


/// @title A parking Lot contract
/// @author Ricardo
/// @notice client pay to park, park lot got a owner, and could get full
contract ParkingSpot is Ownable {

    uint public spotId;

    // track if parking lot is full
    enum LotStatus { VACANT, FULL }
    LotStatus public currentStatus;

    // Events to frontend
    event Occupy(address _address, uint _value); 

    constructor(uint _spotId) {
        // the person address who deployed the contract
        super;
        // set current status
        currentStatus = LotStatus.VACANT;

        spotId = _spotId;


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
    // function park() payable external checkVacancy checkAmmount(0.001 ether) {
    //     currentStatus = LotStatus.FULL;
    //     owner.transfer(msg.value);
    //     // send the event to frontend
    //     emit Occupy(msg.sender, msg.value);
    // }


    // simulating park function
    receive() external payable checkVacancy checkAmmount(0.001 ether) {
        currentStatus = LotStatus.FULL;
        owner.transfer(msg.value);
        // send the event to frontend
        emit Occupy(msg.sender, msg.value);
    }


    // set park lot available
    function markAvailable() external onlyOwner {
        currentStatus = LotStatus.VACANT;
    }

    // check if the spot is VACANT
    function isVacant() external view returns(bool) {
        if (currentStatus == LotStatus.VACANT) {
            return true;
        } else  {
            return false;
        }
    }



}