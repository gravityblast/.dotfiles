if [ -n `which postgres` ]; then
  alias pginit='initdb /var/lib/postgres/data -E utf8'
  alias pgstart='pg_ctl -D /var/lib/postgres/data -l /var/lib/postgres/server.log start'
  alias pgstop='pg_ctl -D  /var/lib/postgres/data stop -s -m fast'
fi
