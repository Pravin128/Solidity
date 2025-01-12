//SPDX-License-Identifier:MIT
pragma solidity ^0.8.26;

contract PureView{
    uint public number=20;
    function ViewFun() public view returns(uint){
        return number;
    }
    function PureFun() public pure returns(uint)
    {
        return 15;
    }
     function PureFun1(uint _x) public pure returns(uint)
    {
        return _x;
    }
    function simpleFun() public {
        number+=10;
    }
}