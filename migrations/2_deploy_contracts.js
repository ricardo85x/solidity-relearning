const FirstContract = artifacts.require("./FirstContract.sol");
const StructExample = artifacts.require("./StructExample.sol");

module.exports = function(deployer) {
    deployer.deploy(FirstContract)
    deployer.deploy(StructExample)
}
