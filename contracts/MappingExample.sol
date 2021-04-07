// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.7.0;

contract MappingExample {
    
    // initiate simple mapping
    mapping(string => uint) public players;

    // nested mapping
    mapping(string => mapping(string => uint)) public versions;

    // fill up the mapping with data
    constructor() {
        players['bob'] = 10;
        players['rick'] = 50;
        players['alice'] = 35;
        versions['alpha']['mara'] = 199;
    }

    // reade data from the mapping
    function getScore(string memory _player) external view returns (uint) {
        return players[_player];
    }

    // update mapping

    function updateScore(string memory _player, uint _score) external {
        players[_player] = _score;
    }

    // delete a player

    function deletePlayer(string memory _player) external {
        delete  players[_player];
    }

    // nested
    function getNestedData(string memory _version, string memory _player) external view returns (uint) {
        return versions[_version][_player];
    }

}