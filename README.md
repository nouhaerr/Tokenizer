# Token42

Token ERC-20 déployé sur Ethereum Sepolia Testnet.

## Choix techniques

- **Blockchain** : Ethereum Sepolia Testnet — testnet officielle Ethereum, stable et bien supportée
- **Standard** : ERC-20 — standard universel pour les tokens fongibles sur EVM
- **Langage** : Solidity 0.8.20 — langage natif des smart contracts EVM
- **Outil de déploiement** : Remix IDE — IDE en ligne, simple et efficace pour déployer sur testnet
- **Bibliothèque** : OpenZeppelin — contrats audités et sécurisés, référence de l'industrie

## Pourquoi ces choix ?

OpenZeppelin fournit une implémentation ERC-20 auditée par des experts en sécurité.
Réimplémenter ces fonctions from scratch introduirait des risques inutiles.
Remix IDE permet de compiler, déployer et interagir avec le contrat directement depuis le navigateur, sans installation.

## Informations du contrat

- **Nom** : Token42
- **Symbole** : TK42
- **Decimals** : 18
- **Supply maximale** : 42 000 000 TK42
- **Réseau** : Ethereum Sepolia Testnet (Chain ID: 11155111)
- **Adresse du contrat** : `0xa770761CF94fE7d74c3F0b191FBc0AE17c5A20Dd`
- **Explorateur** : https://sepolia.etherscan.io/address/0xa770761CF94fE7d74c3F0b191FBc0AE17c5A20Dd

## Fonctionnalités

- `mint(address, amount)` — Créer des tokens (owner seulement)
- `burn(amount)` — Détruire ses propres tokens
- `transfer(address, amount)` — Transférer des tokens
- `approve(address, amount)` — Autoriser une adresse à dépenser tes tokens
- `balanceOf(address)` — Consulter un solde