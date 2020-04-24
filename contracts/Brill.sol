pragma solidity 0.6.6;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "./Util.sol";


contract Brill is Util, ERC721 {
    using Counters for Counters.Counter;
    using Strings for uint256;
    Counters.Counter private _tokenIds;

    // Add constant address of the DAO contract
    // Make mint function payable
    // Hardcorde the prefix of the url
    string constant VIEW_URI_BASE = "https://brill.diamonds/d";

    constructor() public ERC721("Brill", "BRILL") {}

    // tokenURI: https://brill.diamonds/d/1
    function mint(address minter) public returns (uint256) {
        _tokenIds.increment();

        uint256 newItemId = _tokenIds.current();
        _mint(minter, newItemId);
        _setTokenURI(newItemId, strConcat(VIEW_URI_BASE, newItemId.toString()));

        return newItemId;
    }
}
