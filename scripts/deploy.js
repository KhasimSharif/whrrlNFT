const hre = require('hardhat');

async function main(){
    const Whrrl = await hre.ethers.getContractFactory("Whrrl");
    const whrrl = await Whrrl.deploy( "1000000000000000");

    await whrrl.deployed();

    console.log("Address - ", whrrl.address);
}

main()