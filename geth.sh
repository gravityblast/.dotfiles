export GETH_ROPSTEN_CMD="geth --datadir ~/.ethereum-data-ropsten --networkid 3 --syncmode fast --verbosity 4 --cache 2048"
alias geth-ropsten="echo $GETH_ROPSTEN_CMD && $GETH_ROPSTEN_CMD"
