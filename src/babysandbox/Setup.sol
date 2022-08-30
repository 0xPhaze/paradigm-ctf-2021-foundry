// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./BabySandbox.sol";
import "../ParadigmSetup.sol";

contract Setup is ParadigmSetup {
    BabySandbox public sandbox;

    constructor() payable {
        sandbox = new BabySandbox{value: 50 ether}();
    }

    function isSolved() public view returns (bool) {
        return address(sandbox).balance == 0;
    }
}
