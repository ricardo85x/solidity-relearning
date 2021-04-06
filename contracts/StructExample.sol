// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

contract StructExample {

    struct Player {
        string name;
        uint score;
    }


    // create struct
    Player public bob = Player("Bob",50);
    Player public alice = Player("Alice",25);
    Player public ric = Player({
        score: 30,
        name: "Ric"
    });

    // update struct
    function updateBobScore(uint _score) external {
        bob.score = _score;
    }

    // read struct
    function readBobScore() external view returns (uint) {
        return bob.score;
    }

    // delete struct
    function bobDelete() external {
        delete bob;
    }


}