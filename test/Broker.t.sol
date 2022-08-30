// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/broker/Setup.sol";

import "forge-std/Test.sol";

contract Contract is Test {
    Setup challenge;

    WETH9 weth = WETH9(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2);
    IUniswapV2Factory factory = IUniswapV2Factory(0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f);

    Token token;
    Broker broker;
    IUniswapV2Pair pair;

    function setUp() public {
        challenge = new Setup{value: 50 ether}();

        // note: not sure how much initial capital is allocated
        vm.deal(address(this), 50 ether);

        pair = challenge.pair();
        token = challenge.token();
        broker = challenge.broker();
    }

    function testBroker() public {
        assertTrue(challenge.isSolved());
    }
}
