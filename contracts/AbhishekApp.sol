// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AnasCalculator {
    string public ownerName;
    address public ownerAddress;

    constructor(string memory name) {
        ownerName = name;
        ownerAddress = msg.sender;
    }

    event AdditionResult(int256 result);
    event SubtractionResult(int256 result);
    event MultiplicationResult(int256 result);
    event DivisionResult(int256 result);

    function add(int256 a, int256 b) public payable {
        int256 result = a + b;
        emit AdditionResult(result);
    }

    function subtract(int256 a, int256 b) public payable {
        int256 result = a - b;
        emit SubtractionResult(result);
    }

    function multiply(int256 a, int256 b) public payable {
        int256 result = a * b;
        emit MultiplicationResult(result);
    }

    function divide(int256 a, int256 b) public payable {
        require(b != 0, "Cannot divide by zero");
        int256 result = a / b;
        emit DivisionResult(result);
    }
    
    function modulus(uint256 _num1, uint256 _num2) public pure returns (uint256) {
        require(_num2 != 0, "Division by zero");
        return _num1 % _num2;
    }
}
