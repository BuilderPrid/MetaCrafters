// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract unitConverter{
    function getEthers() payable public returns(uint inEth,uint inWei, uint inGwei){
        uint receivedEther = msg.value;
        inEth = receivedEther;
        inWei = inEth*(10**18);
        inGwei = inEth*(10**9);
    }
}