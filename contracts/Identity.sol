// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Identity {
    struct IdentityData {
        string name;
        string email;
        string phone;
    }

    mapping(address => IdentityData) private identities;
    mapping(address => bool) private registered;

    event IdentityRegistered(address indexed user, string name, string email, string phone);

    function registerIdentity(string memory name, string memory email, string memory phone) public {
        require(!registered[msg.sender], "Identity already registered.");
        
        identities[msg.sender] = IdentityData(name, email, phone);
        registered[msg.sender] = true;
        
        emit IdentityRegistered(msg.sender, name, email, phone);
    }

    function getIdentity(address user) public view returns (string memory name, string memory email, string memory phone) {
        require(registered[user], "Identity not registered.");
        
        IdentityData memory identity = identities[user];
        return (identity.name, identity.email, identity.phone);
    }
}
