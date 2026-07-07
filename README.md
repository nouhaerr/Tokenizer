# Token42

Token BEP-20 déployé sur BNB Smart Chain Testnet.

## Choix techniques

- **Blockchain** : BNB Smart Chain (Testnet) — réseau mature, frais faibles, compatible EVM
- **Standard** : BEP-20 (identique à ERC-20) — standard universel pour les tokens fongibles
- **Langage** : Solidity 0.8.20 — langage natif des smart contracts EVM
- **Framework** : Hardhat — outil de développement et déploiement professionnel
- **Bibliothèque** : OpenZeppelin — contrats audités et sécurisés, référence de l'industrie

## Pourquoi ces choix ?

OpenZeppelin fournit une implémentation ERC-20 auditée par des experts en sécurité.
Réimplémenter ces fonctions from scratch introduirait des risques inutiles.
Hardhat permet de compiler, tester et déployer depuis la ligne de commande.

## Informations du contrat

- **Nom** : Token42
- **Symbole** : TK42
- **Decimals** : 18
- **Supply maximale** : 42 000 000 TK42
- **Réseau** : BNB Smart Chain Testnet (Chain ID: 97)
- **Adresse du contrat** : `0x...` ← à remplir après déploiement
- **Explorateur** : https://testnet.bscscan.com/address/0x...

## Fonctionnalités

- `mint(address, amount)` — Créer des tokens (owner seulement)
- `burn(amount)` — Détruire ses propres tokens
- `transfer(address, amount)` — Transférer des tokens
- `approve(address, amount)` — Autoriser une adresse à dépenser tes tokens
- `balanceOf(address)` — Consulter un solde