const proofOfExistence1 = artifacts.require("./ProofOfExistence1.sol");
const proofOfExistence2 = artifacts.require("./ProofOfExistence2.sol");

module.exports = function (deployer) {
  deployer.deploy(proofOfExistence1)
  deployer.deploy(proofOfExistence2);
};
