
const Alpha = require("./contractABI/alpha/Alpha.json");
const { ethers, Contract, Signer } = require("ethers");
// import detectEthereumProvider from '@metamask/detect-provider';

const getBlockchain = () => 

    new Promise((resolve, reject) => {

        window.addEventListener('load', async () => {

            if (window.ethereum) {
                const provider = new ethers.providers.Web3Provider(window.ethereum);
                const signer = provider.getSigner();

                const alpha = new Contract(
                    '0x4Fe7D522AbE6AC9699401c1C9a1bFDD869b95cdb',
                    Alpha.abi,
                    signer
                );
                resolve({signer, alpha});
            }

            resolve({signer: undefined, alpha: undefined })
        });

    });

export default getBlockchain;   
