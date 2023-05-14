// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;
import {Initializable} from "@openzeppelin/contracts/proxy/utils/Initializable.sol";

contract MetamorphicContract is Initializable {
    address payable public owner;

    function kill() external {
        require(msg.sender == owner, "Only owner can kill");
        selfdestruct(owner);
    }
}
