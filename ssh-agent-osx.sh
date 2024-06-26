# Add this to the end of .zshrc

trap "echo > /dev/null" INT
eval "$(ssh-agent -s)" > /dev/null
if ! ssh-add --apple-use-keychain ~/.ssh/id_ed25519; then
  eval "$(ssh-agent -k)" > /dev/null
  echo -e "\nFailed to add key to agent.\nThe agent was killed. \o/  ¬_o"
fi
trap - INT
