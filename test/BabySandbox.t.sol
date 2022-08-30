// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/babysandbox/Setup.sol";

import "forge-std/Test.sol";

contract Solution is Test {
    Setup challenge;

    function setUp() public {
        challenge = new Setup{value: 50 ether}();

        vm.deal(address(this), 50 ether);
    }

    function testBabySandbox() public {
        assertTrue(challenge.isSolved());
    }
}
