//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >=0.7.0  <  0.9.0;
interface UniswapV2Factory{
    function getPair(address tokenA, address tokenB) external view returns (address pair);
}

interface UniswapV2pair{
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
}

contract tokenPair{
    address private factory = 0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f;
    address private shibainu  =0x95aD61b0a150d79219dCF64E1E6Cc01f0B64C4cE; 
    address private weth = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2; 

    function getReserveTokens() external view returns (uint, uint){
        address pair = UniswapV2Factory(factory).getPair(shibainu, weth);gg
        (uint reserve0, uint reserve1,) = UniswapV2pair(pair).getReserves();
        return (reserve0, reserve1);
    }

}