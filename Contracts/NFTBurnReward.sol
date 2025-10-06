// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

interface IERC721 {
    function transferFrom(address from, address to, uint256 tokenId) external;
}

contract FairlyOddBurnReward {
    // Fixed NFT collection: Fairly Odd Fellas
    address public constant NFT_CONTRACT = 0x63495bC9F19Bf77A2F7822b5566D230e82EC3B66;
    uint256 public constant REWARD = 700000000000000; // 0.0007 ETH
    address public constant BURN_ADDRESS = 0x000000000000000000000000000000000000dEaD;

    event NFTBurned(address indexed user, uint256 tokenId, uint256 reward);

    function burnNFT(uint256 tokenId) external {
        // Transfer NFT to burn address
        IERC721(NFT_CONTRACT).transferFrom(msg.sender, BURN_ADDRESS, tokenId);

        // Ensure enough ETH balance
        require(address(this).balance >= REWARD, "Insufficient ETH in pool");

        // Pay ETH reward
        (bool success, ) = payable(msg.sender).call{value: REWARD}("");
        require(success, "ETH transfer failed");

        emit NFTBurned(msg.sender, tokenId, REWARD);
    }

    // Contract can receive ETH
    receive() external payable {}
}
