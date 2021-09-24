trap "echo > /dev/null" INT
eval "$(ssh-agent -s)" > /dev/null
if ! ssh-add ~/.ssh/id_ed25519; then
  eval "$(ssh-agent -k)" > /dev/null
  echo -e "\nFailed to add key to agent.\nThe agent was killed. \o/  ¬_o\nI hope you're happy now, Bond"
fi
trap - INT