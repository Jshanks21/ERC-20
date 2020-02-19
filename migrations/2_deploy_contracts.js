const OpenZepToken = artifacts.require("OpenZepToken");

module.exports = function (deployer) {
    const _name = "OpenZep Token";
    const _symbol = "OZT";
    const _decimals = 18;

    deployer.deploy(OpenZepToken, _name, _symbol, _decimals);
};
