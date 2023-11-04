// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.16;


contract PseudoToken {
    uint public balance = 0;
    uint public aauth = 0;
    uint public total = 1000000;
    function mint(uint amount) public returns(uint){
        require(aauth == 1);
        require(balance < total);
        balance = balance + amount;
        
        return balance;

    }

    function burn(uint burn) public returns(uint){
        require(aauth == 1);
        
        require(balance >= 0);
        balance = balance - burn;
        
        return balance;
    }

    function start(uint auth) public returns(uint){
      aauth = auth;
      return aauth;
    }
}