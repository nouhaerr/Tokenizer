// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title Token42
 * @dev Token ERC-20 déployé sur Ethereum Sepolia Testnet
 *      Supply maximale fixée à 42 000 000 TK42
 *      Seul l'owner peut minter de nouveaux tokens
 *      N'importe qui peut brûler ses propres tokens
 */
contract Token42 is ERC20 {

    // Adresse du propriétaire du contrat — reçoit tous les tokens au déploiement
    address public owner;

    // Supply maximale : 42 millions de tokens, ne peut jamais être dépassée
    // Multiplié par 10^18 car Solidity travaille en wei (unité minimale)
    uint256 public constant MAX_SUPPLY = 42_000_000 * 10 ** 18;

    /**
     * @dev Modifier qui restreint l'accès à l'owner uniquement
     *      msg.sender = adresse qui appelle la fonction
     *      Si ce n'est pas l'owner, la transaction est rejetée
     */
    modifier onlyOwner() {
        require(msg.sender == owner, "Token42: not owner");
        _;
    }

    /**
     * @dev Constructeur — exécuté une seule fois au déploiement
     *      Définit le nom "Token42" et le symbole "TK42"
     *      Assigne l'owner et mint tous les tokens vers lui
     */
    constructor() ERC20("Token42", "TK42") {
        owner = msg.sender;
        _mint(msg.sender, MAX_SUPPLY);
    }

    /**
     * @dev Crée de nouveaux tokens vers une adresse
     *      Réservé à l'owner grâce au modifier onlyOwner
     * @param to Adresse destinataire des nouveaux tokens
     * @param amount Quantité à créer en wei (1 token = 1 * 10^18)
     */
    function mint(address to, uint256 amount) public onlyOwner {
        require(
            totalSupply() + amount <= MAX_SUPPLY,
            "Token42: supply maximale atteinte"
        );
        _mint(to, amount);
    }

    /**
     * @dev Détruit des tokens du compte de l'appelant
     *      Réduit la supply totale de façon permanente
     * @param amount Quantité à détruire en wei
     */
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}