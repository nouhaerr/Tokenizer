# Comment utiliser Token42

## Prérequis

- MetaMask installé : https://metamask.io
- Réseau Ethereum Sepolia Testnet configuré dans MetaMask :
  - Aller dans MetaMask → Réseaux → Afficher les réseaux de test → activer Sepolia
  - Chain ID : 11155111
  - Symbole : ETH
  - Explorer : https://sepolia.etherscan.io

## Ajouter le token à MetaMask

1. Ouvre MetaMask
2. "Importer un token"
3. Colle l'adresse du contrat : `0xa770761CF94fE7d74c3F0b191FBc0AE17c5A20Dd`
4. Le symbole TK42 et les décimales (18) se remplissent automatiquement

## Interagir avec le contrat

### Via Etherscan (sans code)

1. Va sur https://sepolia.etherscan.io/address/0xa770761CF94fE7d74c3F0b191FBc0AE17c5A20Dd
2. Onglet "Contract" → "Write Contract"
3. Connecte MetaMask
4. Tu peux appeler `mint`, `burn`, `transfer` directement

### Via Remix IDE

1. Va sur https://remix.ethereum.org
2. Ouvre le fichier `Token42.sol`
3. Compile avec Solidity 0.8.20
4. Onglet "Deploy & Run Transactions"
5. Environment → "Injected Provider - MetaMask"
6. Connecte MetaMask sur Sepolia
7. Dans "At Address" colle : `0xa770761CF94fE7d74c3F0b191FBc0AE17c5A20Dd`
8. Clique "At Address" → le contrat apparaît dans "Deployed Contracts"
9. Tu peux appeler toutes les fonctions directement