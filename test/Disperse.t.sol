// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "../lib/forge-std/src/Test.sol";
import "../src/Disperse.sol";
import "../src/TestNFT.sol";

contract DisperseTest is Test {

  Disperse disperse;
  TestNFT testNFT;

  function setUp() public {
    disperse = new Disperse();
    testNFT = new TestNFT();
  }

}