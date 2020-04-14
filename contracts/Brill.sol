pragma solidity 0.6.4;
import "@openzeppelin/token/ERC721/ERC721.sol";
import "@openzeppelin/token/ERC721/ERC721Metadata.sol";


contract Brill is ERC721, ERC721Metadata {
    constructor() public ERC721Metadata("Brill", "BRILL") {}
}
