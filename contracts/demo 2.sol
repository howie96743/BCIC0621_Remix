// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.7.4;
contract Demo2 {
    function getResult() public pure returns (string memory) {
        uint256 a = 123;
        uint256 b = 56789;
        uint256 result = a+b;
        return integerToString(result);     
    }
    function integerToString(uint i) internal pure returns(string memory) {
        if (i==0) {
            return "0";
        }
        uint j = i;
        uint len=0;
        while (j != 0){
            len++;
            j/=10;
        }
        bytes memory bstr = new bytes(len);
        uint k = len-1;
        while(i != 0){
            //bstr[k--]=bytes1(uint8(48+(i%10)));
            bstr[k--]=byte(uint8(48+(i%10)));
            i/=10;
        }
        return string(bstr);
    }
}