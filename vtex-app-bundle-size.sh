function vtex_prod_size() {
  local ACC=$(vtex whoami | awk -v RS="" 'match($0, /into (\S+) as/, vec) { print vec[1] }')
  local VENDOR=$(cat manifest.json | awk -v RS="" 'match($0, /"vendor": "(\S+)",/, vec) { print vec[1] }')
  local APP_NAME=$(cat manifest.json | awk -v RS="" 'match($0, /"name": "(\S+)",/, vec) { print vec[1] }')
  local VERSION=$(cat manifest.json | awk -v RS="" 'match($0, /"version": "(\S+)",/, vec) { print vec[1] }')
  open "https://$ACC.vtexassets.com/_v/public/assets/v1/published/$VENDOR.$APP_NAME@$VERSION/public/react/prodReport.html"
}

function vtex_link_size() {
  local WS=$(vtex whoami | awk -v RS="" 'match($0, /workspace (\S+)/, vec) { print vec[1] }')
  local ACC=$(vtex whoami | awk -v RS="" 'match($0, /into (\S+) as/, vec) { print vec[1] }')
  local VENDOR=$(cat manifest.json | awk -v RS="" 'match($0, /"vendor": "(\S+)",/, vec) { print vec[1] }')
  local APP_NAME=$(cat manifest.json | awk -v RS="" 'match($0, /"name": "(\S+)",/, vec) { print vec[1] }')
  local VERSION=$(cat manifest.json | awk -v RS="" 'match($0, /"version": "(\S+)",/, vec) { print vec[1] }')
  open "https://$WS--$ACC.myvtex.com/_v/private/assets/v1/linked/$VENDOR.$APP_NAME@$VERSION/public/react/devReport.html"
}