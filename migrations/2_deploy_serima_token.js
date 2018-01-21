const SerimaToken = artifacts.require('./SerimaToken.sol')

module.exports = (deployer) => {
  let initialSupply = 50000e18
  deployer.deploy(SerimaToken, initialSupply)
}
