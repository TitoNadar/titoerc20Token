var titotoken = artifacts.require("./titotoken.sol");
var titotokenSale = artifacts.require("./titotokenSale.sol");

module.exports = function(deployer) {
  deployer.deploy(titotoken, 1000000).then(function() {
    // Token price is 0.001 Ether
    var tokenPrice = 1000000000000000;
    return deployer.deploy(titotokenSale, titotoken.address, tokenPrice);
  });
};
