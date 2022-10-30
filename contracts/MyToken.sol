// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {
  constructor() ERC20("MyToken", "MTK") {
    // 向合约创建者发送 1000 个有18位小数的代币
    _mint(msg.sender, 1000 * 10 ** 18);
  }

   function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
