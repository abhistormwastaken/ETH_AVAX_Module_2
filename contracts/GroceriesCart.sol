// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GroceriesCart {
    string public ownerName;
    address public ownerAddress;

    constructor(string memory name) {
        ownerName = name;
        ownerAddress = msg.sender;
    }

    event AddItem(int256 result);
    event RemoveItem(int256 result);
    event DiscountResult(int256 result);
    event ItemsQuantity(int256 result);

    function add_item(int256 a, int256 b) public payable {
        int256 result = a + b;
        emit AddItem(result);
    }

    function remove_item(int256 a, int256 b) public payable {
        int256 result = a - b;
        emit RemoveItem(result);
    }

    function discount_10percent(int256 a, int256 b) public payable {
        int256 result = (a * 90) / 100;
        emit DiscountResult(result);
    }

    function quantity(int256 a, int256 b) public payable {
        require(b != 0, "Cannot divide by zero");
        int256 result = a / b;
        emit ItemsQuantity(result);
    }
}
