// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.7.0;

contract ReferenceTypes {

    // array type is reference
    uint[] public x = [1,2,3,4,5,6];

    function realTest() external {

        // the x is altered, because it is a reference
        _changeSomething(x);
    }

    // double values passed
    function  _changeSomething(uint[] storage _input) internal returns(uint[] memory) {
        _input[0] = 42;
        return _input;
    }
}