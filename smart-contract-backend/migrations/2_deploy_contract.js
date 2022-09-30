var AerospaceContract=artifacts.require ("./AerospaceContract.sol");
module.exports = function(deployer) {
      deployer.deploy(AerospaceContract);
}