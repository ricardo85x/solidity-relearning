// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.7.0;

contract ValueTypes {

    // primary type is value
    uint256 public x = 10;

    function realTest() external view {
        // the x is not altered, just the copy of the x
        _changeSomething(x);
    }

    // double values passed
    function  _changeSomething(uint _input) internal pure returns(uint) {
        _input = _input * 2;
        return _input;
    }
}