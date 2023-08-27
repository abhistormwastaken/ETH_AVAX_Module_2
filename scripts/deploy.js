const { ethers } = require("hardhat");

async function main() {
  const [deployer] = await ethers.getSigners();

  console.log("Deploying contracts with the account:", deployer.address);

  const AnasCalculator = await ethers.getContractFactory("AnasCalculator");
  const anasCalculator = await AnasCalculator.deploy("Anas");

  console.log("AnasCalculator address:", anasCalculator.target);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
