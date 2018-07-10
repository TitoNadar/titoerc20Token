pragma solidity ^0.4.2;

import "./titotoken.sol";

contract titotokenSale {
    address admin;
    titotoken public tokenContract;
    uint256 public tokenPrice;

    constructor (titotoken _tokenContract, uint256 _tokenPrice) public {
        admin = msg.sender;
        tokenContract = _tokenContract;
        tokenPrice = _tokenPrice;
    }
  
}