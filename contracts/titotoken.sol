pragma solidity ^0.4.2;

contract titotoken{

    uint256 public totalSupply;
    mapping(address=>uint256) public balanceOf;
    
    constructor (uint256 _initialSupply) public{
        //allocate inital supply
        balanceOf[msg.sender] = _initialSupply;
        totalSupply = _initialSupply;
        
    }

}