// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
contract Struct{   
    struct Stud{     //struct can be declared outiside the contract and can be used in all the contracts.
        string name;
        uint age;
        address add;
    }
    Stud public stud;
    Stud[] public studs;
    constructor(string memory _name,uint _age,address _add){
        stud.name = _name;
        stud.age=_age;
        stud.add=_add;
    }
    function setValues() public{
        stud.name = "Mani";
        stud.age = 18;
        stud.add=msg.sender;

        Stud memory stud1=Stud("Tanvi",20,0x5c6B0f7Bf3E7ce046039Bd8FABdfD3f9F5021678);
        Stud memory stud2=Stud({name:"Rahul",age: 2,add:0x5c6B0f7Bf3E7ce046039Bd8FABdfD3f9F5021678});
        studs.push(stud);
        studs.push(stud1);
        studs.push(stud2);
        studs.push(Stud("Ranjith",30,msg.sender));

        //update
        Stud storage new_stud = stud;  //use storage to copy actual address of stud into new variable so that we can update the value of it.add
                                        //memory keyword work like ram, if we use memory keyword there will be no change in value of updation.
        new_stud.age = 20;
        new_stud.name="Vinay";
        new_stud.add = msg.sender;

        //we can directly update with,
        stud.name="Sid";
    }
}