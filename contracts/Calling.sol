// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.7.0;

interface ICallable {
    function getScore() external view returns (uint);
}

contract Calling {

    // the address of the Callable contract
    address public callAddress;

    function setAddress(address _callAddress) external {
         callAddress = _callAddress;
    }

    function callExternal() external view returns(uint) {
        ICallable callable =  ICallable(callAddress);
        return callable.getScore();
    }
    
}