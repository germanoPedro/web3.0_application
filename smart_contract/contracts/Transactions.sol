//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Transactions {
 uint256 transactionCount;
//creates a transfer event for the ethereum to be sent and recieved
 event Transfer(address from,address reciever, uint amount, string message, uint256 timestamp, string keyword); 

struct TransferStruct{
 //specifies the address of the sender
 address sender;
 address reciever;
 uint amount;
 string message;
 uint256 timestamp;
 string keyword;
}
TransferStruct[] transactions;
//ann array of objects

function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword ) public {
  transactionCount +=1;
  transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));
//to transfer the amount of ether to the receiver
  emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);
}

function getAllTransactions() public view returns (TransferStruct[] memory) {
 return transactions;
}

function getTransactionCount() public view returns (uint256) {
 return transactionCount;
}

}



