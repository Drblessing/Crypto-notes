const Golden = artifacts.require("Golden");
const GoldenT = artifacts.require("GoldToken")

module.exports = function (deployer) {
  deployer.deploy(Golden);
  deployer.deploy(GoldenT);
};
