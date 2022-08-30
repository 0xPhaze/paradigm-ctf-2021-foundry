// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/bouncer/Setup.sol";

import "forge-std/Test.sol";

contract Solution is Test {
    address constant ETH = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;
    WETH9 constant weth = WETH9(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2);

    Setup challenge;

    function setUp() public {
        challenge = new Setup{value: 100 ether}();

        vm.deal(address(this), 50 ether);
    }

    function testBouncer() public {
        assertTrue(challenge.isSolved());
    }
}
