ghopen() {
  local url
  url=$(git remote get-url origin 2>/dev/null) || { echo "Not a git repo or no origin remote"; return 1; }
  url=${url%.git}
  url=${url/git@github.com:/https://github.com/}
  open "$url"
}
