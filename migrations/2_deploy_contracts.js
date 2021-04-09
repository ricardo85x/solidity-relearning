const FirstContract = artifacts.require("./FirstContract.sol");
const StructExample = artifacts.require("./StructExample.sol");
const MappingExample = artifacts.require("./MappingExample.sol");
const EnumExample = artifacts.require("./EnumExample.sol");
const StorageArrayExample = artifacts.require("./StorageArrayExample.sol");
const ValueTypes = artifacts.require("./ValueTypes.sol");
const ParkingSpot = artifacts.require("./ParkingSpot.sol")
const ParkingLot = artifacts.require("./ParkingLot.sol")

module.exports = function(deployer) {
    // deployer.deploy(FirstContract)
    // deployer.deploy(StructExample)
    // deployer.deploy(MappingExample)
    // deployer.deploy(EnumExample)
    // deployer.deploy(StorageArrayExample)
    // deployer.deploy(ValueTypes)
    // deployer.deploy(ParkingSpot)
    deployer.deploy(ParkingLot)
}
