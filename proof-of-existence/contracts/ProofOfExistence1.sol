pragma solidity ^0.5.0;


contract ProofOfExistence1 {
  // state variables
  bytes32 public proof;

  // calculate and store the proof for a document
  // *transactional function*
  function notarize(string memory document_name) public {
    proof = proofFor(document_name);
  }

  // helper function to get a document's sha256
  // *read-only function*
  function proofFor(string memory document_name) public pure returns (bytes32) {
    return sha256(abi.encodePacked(document_name));
  }
}
