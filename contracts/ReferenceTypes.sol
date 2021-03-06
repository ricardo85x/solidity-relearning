// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.7.0;

contract ReferenceTypes {

    /*
        There are three data location: memory, storage and calldata
        - memory: is a data location whose lifetime is temporary
        - storage: is a data location where the state variables are stored
        - calldata: is a special data location that contains the function arguments
        - calldata is imutable
        - where you are using external, you should use calldata instead of storage
        - you should use memory wherever it is possible to save gas

    */

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