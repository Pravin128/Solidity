//SPDX-License-Identifier:MIT
pragma solidity ^0.8.26;
contract String{
    string public str="This is string";
    function StringPure() public pure returns(string memory){
        string memory name="This is name ";
        return name;
    }
}

