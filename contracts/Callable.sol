// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.7.0;

contract Callable {

    uint score = 10;

    function getScore() external view returns (uint) {
        return score;
    }

}