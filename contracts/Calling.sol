// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.7.0;

import "./Callable.sol";

contract Calling {

    // the address of the Callable contract
    address public callAddress;

    function setAddress(address _callAddress) external {
         callAddress = _callAddress;
    }

    function callExternal() external view returns(uint) {
        Callable callable =  Callable(callAddress);
        return callable.getScore();
    }
    
}