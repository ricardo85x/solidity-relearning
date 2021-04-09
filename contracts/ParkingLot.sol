// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.7.0;

import "./Ownable.sol";
import "./ParkingSpot.sol";

contract ParkingLot is Ownable {

    // spot addreses
    mapping(uint => address) spots;

    // create a parkingSpot
    function createSpot(uint _spotId) external onlyOwner {
        // deploy a new ParkingSpot contract with "new" tag
        ParkingSpot spot = new ParkingSpot(_spotId);
        // save the address of the new contract to spots mapping
        spots[_spotId] = address(spot);
    }

    // check status of spot
    function parkingSpotStatus(uint _spotId) external view returns(bool) {
        // reference the deployed contract with it's address
        ParkingSpot spot = ParkingSpot(spots[_spotId]);
        // return true if it is vacant, otherwise return false
        return spot.isVacant();
    }


    // park on spot
    function takeUpSpot(uint _spotId) payable external {
        // reference the deployed contract with it's address
        ParkingSpot spot = ParkingSpot(spots[_spotId]);
        // park passing money
        spot.park{value: msg.value}();
    }

    // free up the spot
    function freeUpSpot(uint _spotId) external onlyOwner {
        // reference the deployed contract with it's address
        ParkingSpot spot = ParkingSpot(spots[_spotId]);
        spot.markAvailable();
    }



}