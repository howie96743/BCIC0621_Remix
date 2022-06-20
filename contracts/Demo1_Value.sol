// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.7.4;
contract Demo1Value{
    uint256 public magicnumber;
    constructor(uint256 initNumber){
        magicNumber = initNumber;
    }
    function setNumber(uint newNumber)public {
        magicNumber = newNumber;
    }
      