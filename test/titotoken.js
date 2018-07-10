var titotoken=artifacts.require('./titotoken.sol');

contract('titotoken',function(accounts){

    it('sets total supply',function(){
        return titotoken.deployed().then(function(instance){
            tokeninstance=instance;
            return tokeninstance.totalSupply();
        }).then(function(totalSupply){
            assert.equal(totalSupply.toNumber(),1000000);
        });
    });
})