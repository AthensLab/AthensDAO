// import React, { useState, Component } from "react";
import { AlphaABI } from "./contractABI/AlphaABI.js";
import { ethers, Contract, Signer } from "ethers";
import detectEthereumProvider from '@metamask/detect-provider';

const provider = new ethers.providers.InfuraProvider("rinkeby")

// Rinkeby Address: 0x4Fe7D522AbE6AC9699401c1C9a1bFDD869b95cdb (deployed through Remix)
const contractAddress = '0x4Fe7D522AbE6AC9699401c1C9a1bFDD869b95cdb';

const AlphaContract = new ethers.Contract(contractAddress, abi, provider)

console.log(AlphaContract);

// let abi = AlphaABI;

// const getBlockchain = () => 
//     new Promise( async (resolve, reject) => {

//         let provider = await detectEthereumProvider();
        
//         if(provider) {
//             await provider.request({ method: 'eth_requestAccounts' });
//             try {
//               const web3 = new Web3(window.ethereum);
//               resolve(web3);
//             } catch(error) {
//               reject(error);
//             }
//           }
//           reject('Install Metamask');

//         const contractAddress = '';

//         const AlphaContract = new ethers.Contract(contractAddress, abi, provider)

//         console.log(AlphaContract);
//     });

    

