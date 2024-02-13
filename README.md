# hardhat_boilerplate

In this tutorial we'll guide you through:

- Setting up your Node.js environment for Ethereum development
- Creating and configuring a Hardhat project
- The basics of a Solidity smart contract that implements a token
- Writing automated tests for your contract using Hardhat
- Debugging Solidity with console.log() using Hardhat Network
- Deploying your contract to Hardhat Network and Ethereum testnets

## Setting up the environment

- Install Node.js

## How to create new hardhat project

Open a new terminal and run these commands to create a new folder:

```
mkdir hardhat-tutorial
cd hardhat-tutorial
```

Then initialize an npm project as shown below. You'll be prompted to answer some questions.

```
npm init
```

Now we can install Hardhat:

```
npm install --save-dev hardhat
```

In the same directory where you installed Hardhat run:

```
npx hardhat init
```

Select `Create an empty hardhat.config.js` with your keyboard and hit enter.  
When Hardhat is run, it searches for the closest `hardhat.config.js` file starting from the current working directory. This file normally lives in the root of your project and an empty `hardhat.config.js` is enough for Hardhat to work. The entirety of your setup is contained in this file.
