var titotoken = artifacts.require("./titotoken.sol");

module.exports = function(deployer) {
  deployer.deploy(titotoken,1000000);
};
