pragma solidity >=0.4.21 <0.7.0;

contract Election {

struct Candidate {
    uint id;
    string name;
    uint voteCount;
}

mapping(uint => Candidate ) public candidates;

uint public candidatesCount;

constructor () public  {
    addCandidate('candidate 1');
    addCandidate('candidate 2');
}

function addCandidate(string memory _name ) private{
            candidatesCount++;
            candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
}


}