import './App.css';
import { useState, useEffect } from 'react';
// import { ethers } from 'ethers';
// import detectEthereumProvider from '@metamask/detect-provider';
import getBlockchain from './ethereum.js';

// Rinkeby Address
// const AlphaAddress = "0x4Fe7D522AbE6AC9699401c1C9a1bFDD869b95cdb"

function App() {

  const [signer, setSigner] = useState(undefined);
  const [alpha, setAlpha] = useState(undefined);

  useEffect(() => {
    
    const init = async () => {
      const { signer, alpha } = await getBlockchain();
      setSigner(signer);
      setAlpha(alpha);
    };
    init();

  }, []);

  //////////////functions/////////////



  /////////////////////

  if(typeof signer === 'undefined'
  || typeof alpha === 'undefined'
  ) {
    return 'DAPP is Loading...';
  }

  return (
    <div className="App">
      <header className="App-header">
        <h1>ALPHA Token</h1>
        <button onClick={ function eth() {window.ethereum.request({ method: 'eth_requestAccounts' }); console.log('MM connected')}} className="enableEthereumButton">Connect MetaMask</button>
      </header>
    </div>
  );
}

export default App;
