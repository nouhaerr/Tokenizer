# Token42 — Whitepaper

## Résumé

Token42 (TK42) est un token utilitaire ERC-20 déployé sur Ethereum Sepolia Testnet.
Il sert de démonstration complète du cycle de vie d'un token :
création, distribution, transfert et destruction.

## Problème résolu

Ce projet illustre comment créer un actif numérique fongible sur une
blockchain publique, sans autorité centrale, avec des règles immuables
encodées dans le smart contract.

## Tokenomics

| Paramètre       | Valeur                          |
|-----------------|---------------------------------|
| Nom             | Token42                         |
| Symbole         | TK42                            |
| Supply maximale | 42 000 000 TK42                 |
| Decimals        | 18                              |
| Distribution    | 100% à l'owner au déploiement  |

## Sécurité

- **onlyOwner** : modifier custom qui vérifie que msg.sender == owner avant d'exécuter mint
- **MAX_SUPPLY** : impossible de dépasser 42M tokens, vérification on-chain dans mint()
- **Burn public** : chaque utilisateur contrôle la destruction de ses propres tokens
- **Pas de clé privée** : aucune information sensible dans le code ou le repo

## Architecture technique

Le contrat hérite du contrat OpenZeppelin ERC20 et implémente :
- `owner` : variable qui stocke l'adresse du déployeur
- `onlyOwner` : modifier custom qui protège la fonction mint
- `MAX_SUPPLY` : constante qui limite la supply totale à 42 millions

## Réseau

- Réseau : Ethereum Sepolia Testnet
- Chain ID : 11155111
- Adresse : 0xBb6a07428b43fA31FEE110FAb9f55c562c28Ac92
- Explorer : https://sepolia.etherscan.io/address/0xBb6a07428b43fA31FEE110FAb9f55c562c28Ac92

## Utilisation

Voir `documentation/how_to_use.md` pour les instructions détaillées.