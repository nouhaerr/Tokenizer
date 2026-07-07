# Token42 — Whitepaper

## Résumé

Token42 (TK42) est un token utilitaire BEP-20 déployé sur BNB Smart Chain.
Il sert de démonstration complète du cycle de vie d'un token :
création, distribution, transfert et destruction.

## Problème résolu

Ce projet illustre comment créer un actif numérique fongible sur une
blockchain publique, sans autorité centrale, avec des règles immuables
encodées dans le smart contract.

## Tokenomics

| Paramètre        | Valeur              |
|------------------|---------------------|
| Nom              | Token42             |
| Symbole          | TK42                |
| Supply maximale  | 42 000 000 TK42     |
| Decimals         | 18                  |
| Distribution     | 100% à l'owner au déploiement |

## Sécurité

- **Ownable** : seul l'owner peut minter de nouveaux tokens
- **MAX_SUPPLY** : impossible de dépasser 42M tokens, vérification on-chain
- **Pas de pause** : le contrat ne peut pas être gelé (simplicité volontaire)
- **Burn public** : chaque utilisateur contrôle la destruction de ses tokens

## Architecture technique

Le contrat hérite de deux contrats OpenZeppelin :
- `ERC20` : implémentation standard du token fongible
- `Ownable` : gestion des permissions par adresse propriétaire

## Utilisation

Voir `documentation/how_to_use.md` pour les instructions détaillées.