# Comment utiliser Token42

## Prérequis

- MetaMask installé : https://metamask.io
- Réseau BNB Testnet configuré dans MetaMask :
  - RPC : https://data-seed-prebsc-1-s1.binance.org:8545/
  - Chain ID : 97
  - Symbole : tBNB
  - Explorer : https://testnet.bscscan.com

## Ajouter le token à MetaMask

1. Ouvre MetaMask
2. "Importer un token"
3. Colle l'adresse du contrat : `0x...`
4. Le symbole TK42 et les décimales (18) se remplissent automatiquement

## Interagir avec le contrat

### Via bscscan (sans code)

1. Va sur https://testnet.bscscan.com/address/0x...
2. Onglet "Contract" → "Write Contract"
3. Connecte MetaMask
4. Tu peux appeler `mint`, `burn`, `transfer` directement

### Via Hardhat (ligne de commande)

```bash
cd deployment
npm install
npx hardhat run deploy.js --network bscTestnet
```

## Déploiement local (test)

```bash
cd deployment
npm install
npx hardhat compile
npx hardhat node          # Lance un nœud local
npx hardhat run deploy.js --network localhost
```