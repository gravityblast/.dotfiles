alias b='bundle exec'

function mate-bundle() {
  local location
  location=`bundle show ${*}` && echo "$(mate "$location" &)" || echo "Could not find gem ${*} in current bundle"
}