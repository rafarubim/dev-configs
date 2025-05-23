# Ensure ssh-agent is running
if ((Get-Service ssh-agent).Status -ne 'Running') {
  Start-Service ssh-agent
}

# Add SSH key if not already loaded
$sshKeys = ssh-add -l 2>&1
if ($sshKeys -like "*The agent has no identities.*") {
  ssh-add "$env:USERPROFILE\.ssh\id_ed25519"
}
