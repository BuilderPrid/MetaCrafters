# ETH PROOF Beginner EVM Course Code

This repository has all the assignments that are a part of the ETH PROOF Beginner EVM course provided by metacrafters. All the assignments that were done are provided in the repository. This repository demonstrates various solidity features like loops,functions and Contracts. This is a proof of completion of the course.

## Description

This Folder has all assignments completed in the order -
  1. Challenge 1: gettersetter.sol
  2. Challenge 2: unitConverter.sol
  3. Challenge 3: loops.sol and ifElse.sol
  4. Challenge 4: calculator.sol
  5. Final Project: myToken.sol
## Getting Started
### Requirements
  1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
  2. Your contract will have a mapping of addresses to balances (address => uint)
  3. You will have a mint function that takes two parameters: an address and a value. The function then increases the total supply by that number and increases the balance of the “sender” address by that amount.
  4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. It will take an address and value just like the mint functions. It will then deduct the value from the total supply and from the balance of the “sender”.
  5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal to the amount that is supposed to be burned.
### Executing FINAL PROJECT program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Program.sol). Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyToken {

    // public variables here
    string public name;
    string public abbrv;
    uint public total_supply;

    // mapping variable here
    mapping(address=>uint) balances;

    constructor(string memory tokenName,string memory tokenSymbol){
        name = tokenName;
        abbrv = tokenSymbol;
    }

    // mint function
    function mint(address _sender,uint amt) public{
        total_supply+=amt;
        balances[_sender]+=amt;
    }

    // burn function
    function burn(address _caller,uint amt) public{
        require(amt<=balances[_caller],"The balance should be higher than burn amount");
        total_supply-=amt;
        balances[_caller]-=amt;
    }

}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile Program.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling various functiona. Click on the "HelloWorld" contract in the left-hand sidebar, and then click on the various functions. Finally, click on the "transact" button to execute the function and retrieve the appropriate message.

## Authors

BuilderPrid - Priyanshu Dwivedi (priyanshudwivedi004@gmail.com)
[@priDRoger](https://twitter.com/priDRoger)


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
