// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.7.0;

contract StorageArrayExample {

    // declare dinamic array
    uint[] public numbers;

    // add elements to array
    constructor() {
        numbers.push(10);
        numbers.push(5);
        numbers.push(3);
    }

    // update 
    function updateArray(uint _index, uint _value) external { 
         numbers[_index] = _value;
    }

    // delete elements from array
    function deleteElement(uint _index) external {
        delete numbers[_index];
    }

    // update every element with loops
    function addNumbers(uint _number) external {
        for (uint i = 0; i< numbers.length; i++) {
            numbers[i] = numbers[i] + _number;
        }
    }

}