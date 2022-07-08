// https://eth-goerli.g.alchemy.com/v2/_Xszf113GS47WITMSEQFVzY__H3cf-rC

require('@nomiclabs/hardhat-waffle')

module.exports = {
  solidity: '0.8.0',
  networks: {
    goerli: {
      url: 'https://eth-goerli.g.alchemy.com/v2/_Xszf113GS47WITMSEQFVzY__H3cf-rC',
      accounts: [
        '8c1c4e745a990bed02b21a5a0416d642f2caa246464d79bf7fb56c6d8a0c35f0',
      ],
    },
  },
}
