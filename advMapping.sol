// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
struct donorDts{
    string name;
    uint age;
    string add;
    uint don;
}

contract advMapping{
    mapping(address=>donorDts) public account_info;
    function Set(string memory _name,uint _age,string memory _add,uint don) public {
        account_info[msg.sender]=donorDts(_name,_age,_add,account_info[msg.sender].don+don);
    } 
    function Delete_Info() public{
        delete account_info[msg.sender];
    }
}