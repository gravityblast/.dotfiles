if which ruby >/dev/null && which gem >/dev/null; then
  PATH="$(ruby -r rubygems -e 'puts Gem.user_dir')/bin:$PATH"
  # PATH="$(ruby -r rubygems -e 'puts Gem.dir')/bin:$PATH"
fi
