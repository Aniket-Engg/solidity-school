pragma solidity ^0.5.0;

contract AllPrimeNumber {

    uint[] primes;

    /**
     * @dev Add all prime numbers in range
     * @param limit end limit of range
     */

    function addPrime(uint limit) public {
        primes.length = 0;
        for(uint j = 2; j < limit; j++){
            if(ifPrime(j))
                primes.push(j);
        }
    }

    /**
     * @dev Returns all prime numbers in array
     */

    function getPrime() public view returns (uint[] memory){
        return primes;
    }

    /**
     * @dev Tells whether number is prime
     * @param _num Number to check
     */

    function ifPrime(uint _num) private pure returns (bool){
        for(uint i = 2; i < _num; i++){
            if(_num % i == 0)
                return false;
        }
        return true;
    }
}