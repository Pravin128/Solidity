// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;
contract Owner{
    address public owner;
    constructor(){
        owner=msg.sender;
    } 
    modifier onlyOwner(){
        require(owner == msg.sender, "Only the owner can do that.");
        _;
    }
    function setOwner(address _newOwner) public onlyOwner{
        require(_newOwner != address(0), "The new owner can't be 0x0");
        owner = _newOwner;
    }
    function ownerAccess() public onlyOwner{
        //code
    }
    function anyOneCanAccess() public{
        //code
    }

}