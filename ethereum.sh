function anvil-fork() {
  anvil --fork-url $1
}

function anvil-fork-mainnet() {
  anvil-fork "https://mainnet.infura.io/v3/$INFURA_API_KEY"
}

function anvil-fork-optimism() {
  anvil-fork "https://mainnet.optimism.io"
}

function anvil-fork-optimism-llama() {
  anvil-fork "https://optimism.llamarpc.com"
}

function forge-create-mainnet() {
  forge create --rpc-url https://mainnet.infura.io/v3/$INFURA_API_KEY --etherscan-api-key $ETHERSCAN_API_KEY "$@"
}
