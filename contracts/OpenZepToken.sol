pragma solidity >=0.4.21 <0.7.0;

import "openzeppelin-solidity/contracts/token/ERC20/IERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";

contract OpenZepToken is IERC20, ERC20, ERC20Detailed {

    constructor(string memory _name, string memory _symbol, uint8 _decimals)
        ERC20Detailed(_name, _symbol, _decimals)
        public
    {

    }
}
