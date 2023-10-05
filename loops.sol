// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Looper{
    function simple() external pure returns (uint) {
        uint result = 0;
        
        for (uint i = 0; i < 1000; i++) {
            result = result + i; // Add current loop index to the result
        }
        return result;
    }
    function complex() external pure returns (uint){
        uint res=0;
        for(uint i =0;i<100;i++){
            res=res + (89**12) + i*2;
        }
        return res;
    }
}
