// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

struct Vulnerabilities {
    uint CveId;
    string Description;
    string Patch;
    uint SeverityLevel;
    uint256 Time;
}

contract VulnerabilitiesContract {
    Vulnerabilities[] public vulnerability; // Array to store all vulnerabilities
    mapping(uint => Vulnerabilities) public VulnInfo; // Mapping for quick access by CveId

    // Function to add a new vulnerability
    function setVulnerability(uint _cveId,string calldata _description,string calldata _patch, uint _severityLevel) public {
        Vulnerabilities memory v = Vulnerabilities({CveId: _cveId,Description: _description,Patch: _patch,SeverityLevel: _severityLevel,Time: block.timestamp});

        vulnerability.push(v); // Add to array
        VulnInfo[_cveId] = v;  // Add to mapping
    }

    // Function to get all vulnerabilities
    function getVuln() public view returns (Vulnerabilities[] memory) {
        return vulnerability;
    }
}
