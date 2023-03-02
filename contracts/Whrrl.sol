// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol"; 


contract Whrrl is ERC721 {
    using Counters for Counters.Counter;
    Counters.Counter public _tokenIds;
    
    mapping (uint256 => address) private _tokenOwners;

    uint public mintFee;

    constructor(uint _mintFee) ERC721("WHRRL", "WRL") {
        mintFee = _mintFee;
    }

    function mintNFT(address recipient) public payable returns (uint256) {
        require(msg.value == mintFee, "Insufficient Mint Fee");
        _tokenIds.increment();
        uint256 newTokenId = _tokenIds.current();
        _safeMint(recipient, newTokenId);
        _setTokenOwner(newTokenId, recipient);
        return newTokenId;
    }

    function _baseURI() internal pure override returns (string memory) {
        return "https://google.com";
    }
    
    function _setTokenOwner(uint256 tokenId, address owner) internal {
        require(_exists(tokenId), "Token does not exist");
        _tokenOwners[tokenId] = owner;
    }

    function getOwnerOfToken(uint256 tokenId) public view returns (address) {
        require(_exists(tokenId), "Token does not exist");
        return _tokenOwners[tokenId];
    }

     
}
