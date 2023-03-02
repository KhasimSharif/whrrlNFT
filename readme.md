 
# Install hardhat

npm install --save-dev hardhat

# Install hardhat plugins

npm install --save-dev @nomiclabs/hardhat-ethers ethers @nomiclabs/hardhat-waffle ethereum-waffle chai @nomiclabs/hardhat-etherscan

# do config in hardhat config file (hardhat.config.js)

create a .env file and add your private key and matic mumbai testnet url
under networks 

# compile smart contracts

npx hardhat compile

# deploy smart contracts

npx hardhat run scripts/deploy.js --network mumbai
