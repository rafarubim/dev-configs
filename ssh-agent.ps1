# Run all of these once for new windows installations

# Enable Windows OpenSSH ssh-agent Service
Set-Service ssh-agent -StartupType Automatic -PassThru | Start-Service
# Add your key to the ssh-agent
ssh-add "$($env:USERPROFILE)\.ssh\id_ed25519"
# Configure git to use Windows OpenSSH implementation
git config --global core.sshCommand C:/Windows/System32/OpenSSH/ssh.exe
