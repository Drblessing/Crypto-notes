pragma solidity ^0.4.22;

//0x1a
contract calledContract {
    //0xa4
    event callEvent(address sender, address origin, address from);

    function calledFunction() public {
        emit callEvent(msg.sender, tx.origin, this);
    }
}

library calledLibrary {
    //0x80
    event callEvent(address sender, address origin, address from);

    function calledFunction() public {
        emit callEvent(msg.sender, tx.origin, this);
    }
}

contract caller {
    //0x7e
    function make_calls(calledContract _calledContract) public {
        // Calling calledContract and calledLibrary directly
        _calledContract.calledFunction();
        calledLibrary.calledFunction();

        // Low-level calls using the address object for calledContract
        require(
            address(_calledContract).call(bytes4(keccak256("calledFunction()")))
        );
        require(
            address(_calledContract).delegatecall(
                bytes4(keccak256("calledFunction()"))
            )
        );
    }
}
