// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract SimpleStorage {
  uint256 public favoriteNumber;
  event storeNumber(
    uint256 indexed oldNumber,
    uint256 indexed newNumber,
    uint256 addedNumber,
    address sender
  );

  
  function store(uint256 _favNO) public {
    emit storeNumber(
        favoriteNumber,
        _favNO,
        favoriteNumber + _favNO,
        msg.sender
    );
    favoriteNumber = _favNO;
  }
}