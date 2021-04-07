// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.7.0;

// selling t-shirts
contract EnumExample {
    
    // make a enum
    enum TShirtSize { SMALL, MEDIUM, LARGE }
    TShirtSize size;

    // set a default value to enum
    constructor() {
        size = TShirtSize.MEDIUM;
    }

    // get data from enum
    function getSize() public view returns(TShirtSize) {
        return size;
    }

    // pass enum to function as parameter
    function setSize(TShirtSize _size) external {
        size = _size;
    }
}