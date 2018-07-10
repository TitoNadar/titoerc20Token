var titotoken=artifacts.require('./titotoken.sol');

contract('titotoken',function(accounts){
    var tokeninstance;
    it('sets total supply',function(){
        return titotoken.deployed().then(function(instance){
            tokeninstance=instance;
            return tokeninstance.totalSupply();
        }).then(function(totalSupply){
            assert.equal(totalSupply.toNumber(),1000000);
            return tokeninstance.balanceOf(accounts[0])
        }).then(function(adminBalance){
            assert.equal(adminBalance.toNumber(),1000000,'admin')
        })
    });
})