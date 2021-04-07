const FirstContract = artifacts.require("./FirstContract.sol");
const StructExample = artifacts.require("./StructExample.sol");
const MappingExample = artifacts.require("./MappingExample.sol");

module.exports = function(deployer) {
    deployer.deploy(FirstContract)
    deployer.deploy(StructExample)
    deployer.deploy(MappingExample)
}
