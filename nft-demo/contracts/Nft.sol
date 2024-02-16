// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Nft is ERC721URIStorage {
    uint256 tokenId;

    constructor() ERC721("Squad 777", "NIKKE"){}

    function mint() external {
        _safeMint(msg.sender, tokenId);
        _setTokenURI(
            tokenId,
            "ipfs://bafkreiguky7si6crgyqgicibjfbzoct3s7zm6dme5htz46etbwljwaizcm"
        );

    }
}