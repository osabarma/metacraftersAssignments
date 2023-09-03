// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract errors {
    address public owner;
    bool public verified;
    //  use require
        function withRequire(bool status) public {
            require(owner == msg.sender, " You are not allowed to change the status because you are not the owner");
            verified = status;
        }
    //require(condition);

    // use revert
          function withRevert(bool status) public {
            if (owner != msg.sender) {
                revert(" Permission Denied");
            }
            verified = status;
        }

    // use assert
         function withAssert(bool status) public {
            assert(owner == msg.sender);
            verified = status;
        }


    constructor () {
            owner = msg.sender;
    }
}
