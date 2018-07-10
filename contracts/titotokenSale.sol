pragma solidity ^0.4.2;

import "./titotoken.sol";

contract titotokenSale {
    address admin;
    titotoken public tokenContract;
    uint256 public tokenPrice;
    uint256 public tokensSold;
    
    constructor (titotoken _tokenContract, uint256 _tokenPrice) public {
        admin = msg.sender;
        tokenContract = _tokenContract;
        tokenPrice = _tokenPrice;
    }

    event Sell(address _buyer, uint256 _amount);

    function multiply(uint x, uint y) internal pure returns (uint z) {
        require(y == 0 || (z = x * y) / y == x);
    }

    function buyTokens(uint256 _numberOfTokens) public payable {
        require(msg.value == multiply(_numberOfTokens, tokenPrice));
        require(tokenContract.balanceOf(this) >= _numberOfTokens);
        require(tokenContract.transfer(msg.sender, _numberOfTokens));
        tokensSold += _numberOfTokens;
        emit  Sell(msg.sender, _numberOfTokens);
    }
  
}