//SPDX-license-Identifier-MIT

pragma solidity ^0.8.26;
contract FixedArray{
    uint[10] public arr;
    constructor(){
        arr=[10,20,30,40];
    }
    function AccessArray() public view returns(uint)
    {
        return arr.length;
    }
}