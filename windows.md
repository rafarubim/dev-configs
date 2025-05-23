# Windows

- Download Windows Terminal at Microsoft Store.

- Open Terminal, `ctrl + ,` to open settings. Set default profile to "Windows PowerShell".

- Open a PowerShell instance.

- Create a `id_ed25519` key pair using Windows `OpenSSH` implementation.

- Run the commands in `ssh-agent.ps1` once.

- ⚠️ Even though the previous commands make the SSH-AGENT auto-start with the computer, sometimes the key must be added to the agent again. This will happen on every PowerShell startup.

- Configure PowerShell to auto-start ssh-agent when opened:
  - Run `$PROFILE` in PowerShell to find the path of the `Microsoft.PowerShell_profile.ps1` profile file.
  - Add the commands in `ssh-agent-windows.ps1` to the end of the file `Microsoft.PowerShell_profile.ps1`.

- Install `git` without installing the _git terminal_.

- Copy this project's `.gitconfig` to PowerShell's `$HOME` directory. Replace the file comments for appropriate values.
