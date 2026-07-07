# Déploiement Token42

## Méthode utilisée
Déploiement via Remix IDE (https://remix.ethereum.org)

## Réseau
- Nom : Ethereum Sepolia Testnet
- Chain ID : 11155111
- Explorer : https://sepolia.etherscan.io

## Contrat déployé
- Adresse : 0xa770761CF94fE7d74c3F0b191FBc0AE17c5A20Dd
- Token : Token42 (TK42)
- Explorer : https://sepolia.etherscan.io/address/0xa770761CF94fE7d74c3F0b191FBc0AE17c5A20Dd

## Étapes de déploiement
1. Aller sur https://remix.ethereum.org
2. Créer contracts/Token42.sol et coller le code
3. Onglet "Solidity Compiler" → version 0.8.20 → "Compile Token42.sol"
4. Onglet "Deploy & Run Transactions"
5. Environment → "Injected Provider - MetaMask"
6. Connecter MetaMask sur Sepolia Testnet
7. Contract → sélectionner "Token42"
8. Cliquer "Deploy" → confirmer dans MetaMask

## Pour interagir avec le contrat déployé (evaluation)
1. Aller sur https://remix.ethereum.org
2. Compiler Token42.sol (étapes 1-5 ci-dessus)
3. Dans "Deploy & Run Transactions" → Environment → "Connect wallet - MetaMask"
4. Dans "At Address" → coller : 0xa770761CF94fE7d74c3F0b191FBc0AE17c5A20Dd
5. Cliquer "At Address" → le contrat apparaît dans "Deployed Contracts"
6. Tu peux maintenant appeler transfer, burn, mint, balanceOf directement

## Vérification
Contrat vérifié sur Etherscan : Source Code Verified ✅ Exact Match