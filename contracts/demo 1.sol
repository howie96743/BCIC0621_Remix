// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.7.4;
contract Demo1{
    string message;
    constructor (string memory m) {
        message = m;
    }
    function setMessage(string memory newValue) public {
        message = newValue;
    }
    function getMessage() view public returns(string memory) {
        return message;
    }
    function setMessageAndReturn(string memory newValue) public returns(string memory) {
        message = newValue;
        return message;
    }
}
