pragma solidity ^0.4.19;

import 'zeppelin-solidity/contracts/token/ERC20/StandardToken.sol';
import 'zeppelin-solidity/contracts/ownership/Ownable.sol';

contract DUCToken is StandardToken, Ownable {
    string public constant name = "DUCATUR Token";
    string public constant symbol = "DUC";
    uint32 public constant decimals = 18;
    uint256 public constant INITIAL_SUPPLY = 7000000000*10**decimals;
    uint256 public totalTokens;

    function DUCToken() public {
        totalTokens = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
    }
}
