
 // SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract CareerProgress {
    string public currentStage = "Learning Solidity";
    address public owner;

    event StageUpdated(string newStage);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can update");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function updateStage(string memory newStage)
        public
        onlyOwner
    {
        require(bytes(newStage).length > 0, "Stage cannot be empty");

        currentStage = newStage;
        emit StageUpdated(newStage);
    }
}
