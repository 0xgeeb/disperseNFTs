// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

interface IDERC721 {
  function safeTransferFrom(address from, address to, uint256 tokenId) external;
}

contract Disperse {

  function disperseTokens(IDERC721 token, address[] calldata recipients, uint256[] calldata tokenIds) public {
    require(recipients.length == tokenIds.length, "invalid amount of recipients/tokenIds");
    for (uint256 i; i < recipients.length; i++) {
      token.safeTransferFrom(msg.sender, recipients[i], tokenIds[i]);
    }
  }

}