# 🔥 Fairly Odd Burn Reward

A minimal onchain experiment for the **Fairly Odd Fellas Collection** on Base.  
Burn your NFT and instantly receive **0.0007 ETH** as a reward.  

---

## ✨ Features
- **Collection-Specific**: Only works with **Fairly Odd Fellas** NFTs.  
- **Burn-to-Earn**: Burn 1 NFT → Get 0.0007 ETH.  
- **Base Exclusive**: Designed for deployment on Base L2.  
- **Trustless & Transparent**: No admin, no whitelist. Events log every burn.  
- **Community Funded**: ETH must be deposited into the contract as a reward pool.  

---

## 📖 Contract Details
- **NFT Collection**: Fairly Odd Fellas  
- **NFT Contract Address**: `0x63495bC9F19Bf77A2F7822b5566D230e82EC3B66`  
- **Burn Address**: `0x000000000000000000000000000000000000dEaD`  
- **Reward per NFT Burned**: `0.0007 ETH`  

---

## 🚀 Instructions

### 1. Clone Repo
```bash
git clone https://github.com/yourusername/fairly-odd-burn-reward.git
cd fairly-odd-burn-reward
```

### 2. Install Dependencies
```bash
npm install
```

### 3. Compile Contracts
```bash
npx hardhat compile
```

### 4. Deploy to Base
Edit `scripts/deploy.js` and set your deployer wallet + Base RPC. Then run:
```bash
npx hardhat run scripts/deploy.js --network base
```

### 5. Fund Reward Pool
Send ETH to the deployed contract address. Example:  
```bash
cast send <contract_address> --value 0.01ether --private-key <your_key>
```

### 6. Burn NFT and Claim Reward
Users can call:
```bash
burnNFT(tokenId)
```
This will:
- Transfer the NFT to the burn address (`0xdead`)  
- Pay the caller `0.0007 ETH`  

---

## 🧪 Example Flow
1. 11 holders of **Fairly Odd Fellas NFTs** each call `burnNFT()` with their tokenId.  
2. Contract burns the NFTs to `0xdead`.  
3. Each holder automatically receives `0.0007 ETH` from the reward pool.  

---

💡 *“Burn your NFT. Earn ETH. Built On Base.”*
