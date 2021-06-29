/*
 * @source: https://github.com/SmartContractSecurity/SWC-registry/blob/master/test_cases/integer_overflow_and_underflow/integer_overflow_benign_1.sol
 * @author: -
 * @vulnerable_at_lines: 17
 */

//Single transaction overflow
//Post-transaction effect: overflow never escapes function

pragma solidity ^0.4.19;

contract IntegerOverflowBenign1 {
    uint public count = 1;

    function run(uint256 input) public {
        // <yes> <report> ARITHMETIC
        uint res = count - input;
    }
    mapping (address => uint256) public frozenAccount;
address owner_test;
 modifier onlyOwner_test() {
    require(msg.sender == owner_test);
    _;
  }

  function freezeAccount(address target,bool freeze) 
    onlyOwner_test() public {
    frozenAccount[target] = freeze;
}
}
}
