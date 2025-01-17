// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
contract dynamicByte{
    bytes public temp;
    constructor(){
        temp="asdfgadsf";
    }
    function pushElement() public {
        temp.push("a");
    }
    function popElement() public{
        temp.pop();
    }
}