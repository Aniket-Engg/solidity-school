// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract Counter {

    uint256 public num;

    /**
     * @dev ancrements num
     */
    function increment() external {
        num += 1;
    }

}

contract CounterInteraction {

    Counter public myCounter;

    /**
     * @dev accepts address of counter contract to initialize
     * @param counterAddress contract address of Counter
     */
    constructor(address counterAddress) {
        myCounter = Counter(counterAddress);
    }

    /**
     * @dev call increment method of counter contract
     */
    function counterIncrement() external {
        myCounter.increment();
    }

}