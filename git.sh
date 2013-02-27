if [ -n `which git` ]; then
  alias g='git'
fi

git_prompt ()
{
  if ! git rev-parse --git-dir > /dev/null 2>&1; then
    return 0
  fi
 
  git_branch=$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')
 
  echo "$git_branch"
}
