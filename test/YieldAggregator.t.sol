// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/yield/Setup.sol";

import "forge-std/Test.sol";

contract Solution is Test {
    Setup challenge;

    WETH9 weth = WETH9(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2);

    MiniBank bank;
    YieldAggregator aggregator;

    function setUp() public {
        challenge = new Setup{value: 100 ether}();

        bank = challenge.bank();
        aggregator = challenge.aggregator();
    }

    function testYield() public {
        assertTrue(challenge.isSolved());
    }
}
