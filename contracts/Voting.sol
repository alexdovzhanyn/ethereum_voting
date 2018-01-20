contract Voting {
  string public candidate1Name;
  string public candidate2Name;
  uint public candidate1Votes;
  uint public candidate2Votes;

  function Voting(string _candidate1, string _candidate2) {
    candidate1Name = _candidate1;
    candidate2Name = _candidate2;
  }

  function vote(string candidate) {
    if (keccak256(candidate) == keccak256(candidate1Name)) {
      candidate1Votes += 1;
    } else if (keccak256(candidate) == keccak256(candidate2Name)) {
      candidate2Votes += 1;
    }
  }
}
