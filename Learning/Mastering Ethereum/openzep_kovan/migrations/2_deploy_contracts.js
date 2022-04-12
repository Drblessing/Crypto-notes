const GoldenT = artifacts.require("GoldToken")

module.exports = function (deployer) {
  deployer.deploy(GoldenT);
};
