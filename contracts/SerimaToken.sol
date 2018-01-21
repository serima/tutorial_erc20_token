pragma solidity ^0.4.18;
import "zeppelin-solidity/contracts/token/StandardToken.sol";

contract SerimaToken is StandardToken {
  string public name = "SerimaToken";
  string public symbol = "STKN";
  uint public decimals = 18;

  function SerimaToken(uint initialSupply) public {
    totalSupply = initialSupply;
    balances[msg.sender] = initialSupply;
  }
}
