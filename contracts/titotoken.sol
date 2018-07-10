pragma solidity ^0.4.2;

contract titotoken{
   
    string public name="titotoken";
    string public symbol="TiTo";
    string public standard="titotoken v1.0";
    uint256 public totalSupply;
    mapping(address=>uint256) public balanceOf;
    
    constructor (uint256 _initialSupply) public{
        //allocate inital supply
        balanceOf[msg.sender] = _initialSupply;
        totalSupply = _initialSupply;
        
    }
    
    event Transfer(
        address indexed _from,
        address indexed _to,
        uint256 _value
    );

    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value);

        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;

        emit Transfer(msg.sender, _to, _value);

        return true;
    }
}