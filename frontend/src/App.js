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
  const [account, setAccount] = useState(undefined);

  useEffect(() => {
    
    const init = async () => {
      const { signer, alpha, account } = await getBlockchain();
      setSigner(signer);
      setAlpha(alpha);
      setAccount(account);
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
  // console.log(account)

  return (
    <div className="App">

      <div className='container'>
        <div className='row'>Connected Account : {account}</div>
        <div className='row'>  </div>
      </div>
      
      <header className="App-header">
        <h1>ALPHA Token</h1>
        <button onClick={ function eth() {window.ethereum.request({ method: 'eth_requestAccounts' }); console.log('MM connected')}} className="enableEthereumButton">Connect MetaMask</button>
      </header>

    </div>
  );
}

export default App;
