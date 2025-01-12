// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Inbox {
   string public message;

    // Constructor to initialize the message
    constructor(string memory initialMessage) {
        message = initialMessage;
    }

    // Function to set a new message
    function setMessage(string memory newMessage) public {
        message = newMessage;
    }
//    function getMessage() public view returns (string memory) {
//     return message;
// }

    
}