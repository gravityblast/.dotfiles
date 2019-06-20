export GETH_ROPSTEN_CMD="geth --datadir ~/.ethereum-data-ropsten --networkid 3 --syncmode light --verbosity 4 --cache 2048"
alias geth-ropsten="echo $GETH_ROPSTEN_CMD && $GETH_ROPSTEN_CMD"

export GETH_MAINNET_CMD="geth --datadir ~/.ethereum-data-mainnet --networkid 1 --syncmode light --verbosity 4 --cache 2048"
alias geth-mainnet="echo $GETH_MAINNET_CMD && $GETH_MAINNET_CMD"
