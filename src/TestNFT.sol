// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "../lib/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";

contract TestNFT is ERC721 {

  constructor() ERC721("Test NFT", "TEST") {
    for (uint256 i = 1; i < 11; i++) {
      _safeMint(msg.sender, i);
    }
  }

}