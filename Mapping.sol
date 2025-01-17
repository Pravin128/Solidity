// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
contract Mapping{
    mapping(uint=>string) public _id;
    function SetId() public {
        _id[110] = "Alice";
        _id[22]="Bob";
        _id[31] =  "Chris";
        _id[32]="Uday";
    }
    function GetId(uint emp_id) public view returns (string memory){
            return _id[emp_id];
    }
}