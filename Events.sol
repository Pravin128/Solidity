// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
contract Event{
    event NewEvent(address account,string message,uint val);
    function SetVal(uint _val) public{
        emit NewEvent(msg.sender,"New Val : ",_val);
    }
}
contract chatApp{
    event SendMsg(address indexed _from,address _to,string message);  //only 3 indexes can be created.
    function Send(address _to,string memory _message) public {
        emit SendMsg(msg.sender,_to,_message);
    }
}