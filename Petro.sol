pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Petro is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Petro(address _owner)  UpgradeableToken(_owner) {
    name = "Petro";
    symbol = "PTR";
    totalSupply = 100000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}