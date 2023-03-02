/** @type import('hardhat/config').HardhatUserConfig */
require('@nomiclabs/hardhat-waffle')

module.exports = {
  solidity: "0.8.17", 
  
  networks: {
    mumbai:{
      url: "https://rpc-mumbai.maticvigil.com/",
      accounts: [`0x0f5ceca7c4a55b88568a25237de84a5ba0b81cfd13d90efff72c7bfae3ac15f7`]
    },
    goerli:{
      url: "https://tame-cosmological-market.ethereum-goerli.discover.quiknode.pro/ebdc16c667022fcbf4825903157e533367d68ecb/",
      accounts: [`0x0f5ceca7c4a55b88568a25237de84a5ba0b81cfd13d90efff72c7bfae3ac15f7`]
    }
  }

};
