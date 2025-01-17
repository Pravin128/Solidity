// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

contract Addition{
    uint public _x;
    uint public _y;
    constructor(){
        _x=10;
        _y=20;
    }
    function Add(uint _a,uint _b) public pure returns(uint){
        return(_a+_b);
    }
    function _Add() public view returns(uint){
        return(_x+_y);
    }
}