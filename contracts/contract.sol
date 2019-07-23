pragma solidity ^0.5.0;

import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
 
contract BasicToken is ERC20 {
    string public constant name = "BasicToken";
    string public constant symbol = "BT";
    uint8 public constant decimals = 5;
    uint256 public constant INITIAL_SUPPLY = 10000 * (10 ** uint256(decimals));

    constructor() public {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}
