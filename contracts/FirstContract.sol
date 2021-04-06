// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;


contract FirstContract {
    uint public count = 10;

    function addNumber(uint _number) public {
        count += _number;
    }

    function subtractNumber(uint _number) public {
        count -= _number;
    }
}


