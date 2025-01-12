// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract VulnerabilityRegistry {
    struct Vulnerability {
        string CVE_ID;
        string severity;
        string description;
        string patchInfo;
        string reportHash; // Reference to IPFS or other off-chain storage
        address addedBy;
        uint timestamp;
    }

    mapping(string => Vulnerability) public vulnerabilities;
    string[] public allCVEIDs; // For indexing

    event VulnerabilityAdded(string CVE_ID, address addedBy, uint timestamp);

    // Add new vulnerability
    function addVulnerability(
        string memory _CVE_ID,
        string memory _severity,
        string memory _description,
        string memory _patchInfo,
        string memory _reportHash
    ) public {
        require(bytes(vulnerabilities[_CVE_ID].CVE_ID).length == 0, "Vulnerability already exists.");
        Vulnerability memory newVulnerability = Vulnerability(
            _CVE_ID,
            _severity,
            _description,
            _patchInfo,
            _reportHash,
            msg.sender,
            block.timestamp
        );
        vulnerabilities[_CVE_ID] = newVulnerability;
        allCVEIDs.push(_CVE_ID);

        emit VulnerabilityAdded(_CVE_ID, msg.sender, block.timestamp);
    }

    // Retrieve vulnerability by CVE_ID
    function getVulnerability(string memory _CVE_ID) public view returns (Vulnerability memory) {
        require(bytes(vulnerabilities[_CVE_ID].CVE_ID).length != 0, "Vulnerability does not exist.");
        return vulnerabilities[_CVE_ID];
    }

    // Get all stored CVE_IDs
    function getAllCVEIDs() public view returns (string[] memory) {
        return allCVEIDs;
    }
}
