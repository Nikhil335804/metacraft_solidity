// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    string public token_name = "NiKHIl";
    string public token_symbol = "Kumar";
    uint public total_capital = 0;

    // mapping variable
    mapping(address => uint) public amount_nik;

    // mint function
    function mint(address _address, uint _value) public {
        total_capital += _value;
        amount_nik[_address] += _value;
    }

    // burn function
    function burn(address _address, uint _value) public {
        if(amount_nik[_address] >= _value) {
            total_capital -= _value;
            amount_nik[_address] -= _value;
        } 
    }
}