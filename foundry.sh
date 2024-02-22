alias cast-call-fantom="cast call --rpc-url https://rpc.fantom.network"
alias cast-call-pgn="cast call --rpc-url https://rpc.publicgoods.network"
alias cast-call-pgn-testnet="cast call --rpc-url https://sepolia.rpc.publicgoods.network"
alias cast-call-local="cast call --rpc-url http://127.0.0.1:8545"
alias cast-call-polygon="cast call --rpc-url https://polygon-rpc.com"
alias cast-call-optimism="cast call --rpc-url https://mainnet.optimism.io"
alias cast-call-zksync-goerli="cast call --rpc-url https://testnet.era.zksync.dev"
alias cast-call-zksync-era="cast call --rpc-url https://mainnet.era.zksync.io"

function cast-call-mainnet() {
  cast call --rpc-url https://mainnet.infura.io/v3/$INFURA_API_KEY "$@"
}

function cast-call-goerli() {
  cast call --rpc-url https://goerli.infura.io/v3/$INFURA_API_KEY "$@"
}
