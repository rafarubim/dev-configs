# Unix

- Open your terminal instance. Recommended ones:
  - Windows with WSL: Windows Terminal with Ubuntu profile
  - OS X: iterm 2

- Run `sudo apt install zsh` to install Z shell (_ZSH_).

- Copy this project's `.zshrc` to the `~` (user home) directory. It contains default configs that otherwise could be changed with the `compinstall` command.

- Run `sudo usermod -s /usr/bin/zsh $(whoami)` to set _ZSH_ as default shell.

- Open a new instance of the terminal with _ZSH_.

- Run the _Oh my Zsh_ install command given by their [web page](https://ohmyz.sh/#install).

- TODO

- Create a `id_ed25519` key pair using `OpenSSH`.

- Add the commands in `ssh-agent.sh` to the end of `~/.zshrc`.

- Copy this project's `.gitconfig` to the `~` directory. Replace the file comments for appropriate values.
