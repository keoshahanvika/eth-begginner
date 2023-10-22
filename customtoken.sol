contract MyToken {

    //public varibales
    string public tokenName = "SOLANA";
    string public tokenSymbol = "SOL";
    uint public totalSupply = 0;
    
    //mapping variable
    mapping(address => uint) public tokenBalances;

    //Mint Token Function
    function mintT(address _address, uint _amount) public {
        totalSupply += _amount;
        tokenBalances[_address] += _amount;
    }

    //Burn token functions
    function burnT(address _address, uint _amount) public {
        require(tokenBalances[_address] >= _amount, "Insufficient balance");
        totalSupply -= _amount;
        tokenBalances[_address] -= _amount;
    }
}
