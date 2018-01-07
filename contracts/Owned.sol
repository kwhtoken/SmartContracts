pragma solidity ^0.4.17;


// Contract Owned

contract Owned {

    address public owner;

    function owned() {

        owner = msg.sender;

    }

    modifier onlyOwner {

        require(msg.sender == owner);
        _;

    }

    function transferOwnership(address newOwner) onlyOwner {

        require(newOwner != 0x0);
        owner = newOwner;

    }

}
