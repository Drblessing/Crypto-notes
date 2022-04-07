const Migrations = artifacts.require("Migrations");
const myContract = artifacts.require("mycontract");
const faucet = artifacts.require("Faucet");

module.exports = function (deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(myContract);
  deployer.deploy(faucet);
};
