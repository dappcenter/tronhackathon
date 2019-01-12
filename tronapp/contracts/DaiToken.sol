pragma solidity ^0.4.23;

import "./tokens/TRC20/TRC20.sol";
import "./tokens/TRC20/TRC20Detailed.sol";

/**
* @title DaiToken is a fake dai ERC20 Token
*/
contract DaiToken is TRC20, TRC20Detailed{
  uint256 public constant INITIAL_SUPPLY = 10000 * (10 ** 5);

  /**
 * @dev assign totalSupply to account creating this contract */
  constructor() public TRC20Detailed("DaiToken", "DAI", 5){
    _mint(msg.sender, INITIAL_SUPPLY);
  }
 }

