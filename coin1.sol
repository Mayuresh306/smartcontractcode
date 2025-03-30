// SPDX-License-Identifier-MIT
pragma version ^0.8.0;

contract coins {
    string public Name;

    function GetName(string memory _Name) public view returns(string memory) {
        Name = _Name;
        return Name;
    } 
}