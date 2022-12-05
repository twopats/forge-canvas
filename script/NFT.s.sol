// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/NFT.sol";

contract MyScript is Script {
    function run() external {
        //load pk from .env
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        
        //utility: records calls and contract creations, logged by forge /broadcast
        vm.startBroadcast(deployerPrivateKey);

        NFT nft = new NFT("NFT_demo", "TUT", "baseUri");

        vm.stopBroadcast();
    }
}
