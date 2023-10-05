
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract getSetGo{
    uint a;
    int b;
    address sender;
    string message;

    function setA(uint _a) public{
        a=_a;
    }
    function setB(int _b) public{
        b=_b;
    }
    function setSender() public{
        sender = msg.sender;
    }
    function setMsg(string memory s) public{
        message=s;
    }

    function getA() public view returns(uint) {
        return a;
    }
    function getB() public view returns(int){
        return b;
    }
    function getsender() public view returns(address){
        return sender;
    }
    function getMsg() public view returns(string memory){
        return message;
    }
}