// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Script.sol";
import "../Challenge/ERC20-Challenge.sol";

contract DeployERC20 is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        MyToken myContract = new MyToken(1000000 ether);
        
        console.log("Contract deployed at:", address(myContract));

        vm.stopBroadcast();
    }
}
