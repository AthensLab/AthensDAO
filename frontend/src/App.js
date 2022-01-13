import './App.css';
import { useState } from 'react';
import { ethers } from 'ethers'
import detectEthereumProvider from '@metamask/detect-provider';

// Rinkeby Address
// const AlphaAddress = "0x4Fe7D522AbE6AC9699401c1C9a1bFDD869b95cdb"



function App() {

  const getAccount = async () => {
  const provider = await detectEthereumProvider();
  const accounts = await window.ethereum.request({ method: 'eth_requestAccounts' });
  const account = accounts[0];
  console.log(account);
  // const signer = await provider.getSigner();
  // console.log(signer);
}

getAccount()




  return (
    <div className="App">
      <header className="App-header">
        <h1>ALFA Token</h1>
        <button className="enableEthereumButton">Enable Ethereum</button>
      </header>
    </div>
  );
}

export default App;
