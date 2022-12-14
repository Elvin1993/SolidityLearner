// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract FuntionViiblitySpecifiers {
    int private a =  123;
    address private u_creater1;
    address public u_creater2;

    /**
     * 记录合约发布者的钱包地址
     */
    constructor() {
      address sender = msg.sender;
      u_creater1 = sender;
      u_creater2 = sender;
    }

    // 仅在内部使用 外部无法调用
    function getInternalSender() internal view returns (address) {

      return msg.sender;
    }

    function getA() external view returns (int) {
      return a;
    }

    function setA(int _a) external {
      a = _a;
    }

    // 获取私有变量a 的值和调用者的钱包地址
    function getInfo() external view returns (address, address, address) {
      address sender = msg.sender;
      // 调用internal方法
      address sender1 = getInternalSender();
      return (u_creater1, sender, sender1);
    }

}

