// SPDX-License-Identifier: MIT
pragma solidity^0.8.19;
contract Owner{
    address payable owner;
    constructor(){
        owner = payable(msg.sender);
    }
    modifier isOwner(){
        require(payable(msg.sender) == owner );
        _;
    }
}