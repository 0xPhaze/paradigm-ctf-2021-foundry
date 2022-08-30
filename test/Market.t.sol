// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/market/Setup.sol";

import "forge-std/Test.sol";

contract Contract is Test {
    Setup challenge;

    CryptoCollectibles public token;
    CryptoCollectiblesMarket public market;
    EternalStorageAPI public eternalStorage;

    function setUp() public {
        challenge = new Setup{value: 50 ether}();

        vm.deal(address(this), 5 ether);

        token = challenge.token();
        market = challenge.market();
        eternalStorage = challenge.eternalStorage();
    }

    function testMarket() public {}
}
