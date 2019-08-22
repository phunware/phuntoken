const PhunToken = artifacts.require("./PhunToken.sol");

module.exports = function(deployer) {
	const _name = "Phun";
	const _symbol = "PHUN";
	const _decimals = 18;
	//deployer.deploy(PhunToken, _name, _symbol, _decimals);
	deployer.deploy(PhunToken);
};
