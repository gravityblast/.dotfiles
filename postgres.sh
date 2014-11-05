if [ -n `which postgres` ]; then
  alias pginit='initdb /usr/local/var/postgres/data -E utf8'
  alias pgstart='pg_ctl -D /usr/local/var/postgres/data -l /usr/local/var/postgres/server.log start'
  alias pgstop='pg_ctl -D /usr/local/var/postgres/data stop -s -m fast'
fi
