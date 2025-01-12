//SPDX-license-Identifier:MIT

pragma solidity ^0.8.26;
contract Loops
{
    function loop() public pure returns(uint){
        uint count=0;
        for(uint i=0;i<10;i++){
            count+=1;
        }
        return count;
    }
}