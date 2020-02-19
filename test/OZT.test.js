const OpenZepToken = artifacts.require("OpenZepToken");

require('chai').should();

contract('OpenZepToken', accounts => {
    const _name = "OpenZep Token";
    const _symbol = "OZT";
    const _decimals = 18;

    beforeEach(async () => {
        this.token = await OpenZepToken.new(_name, _symbol, _decimals);
    });

    describe('token attributes', () => {
        it('has the correct name', async () => {
            const name = await this.token.name();
            name.should.equal(_name);
        });

        it('has the correct symbol', async () => {
            const symbol = await this.token.symbol();
            symbol.should.equal(_symbol);
        });

        it('has the correct decimals', async () => {
            const decimals = (await this.token.decimals()).toNumber();
            decimals.should.equal(_decimals); 
        });
    })
})