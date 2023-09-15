// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract MyTokenShiva {

    // Public variables 
    string public Token_Name_ = "Shivaswami";
    string public Token_Abbrv_ = "SHI";
    uint256 public Total_Supply = 10500;

    // Mapping of addresses to balances
    mapping(address => uint256) public balance;

    // Mint function 
    function minting(address mint_Add_, uint256 mint_Val_) public {
        Total_Supply += mint_Val_;
        balance[mint_Add_] += mint_Val_;
    }

    // Burn function 
    function burning(address burn_Add_, uint256 burn_Val_) public {
        require(balance[burn_Add_] >= burn_Val_, "Insufficient balance to burn");
        
        Total_Supply -= burn_Val_;
        balance[burn_Add_] -= burn_Val_;
    }
}