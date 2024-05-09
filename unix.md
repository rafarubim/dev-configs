# Unix

- Open your terminal instance. Recommended ones:
  - Windows with WSL: Windows Terminal with Ubuntu profile
  - OS X: iterm 2

- Run `sudo apt install zsh` to install Z shell (_ZSH_).

- Copy this project's `.zshrc` to the `~` (user home) directory. It contains default configs that otherwise could be changed with the `compinstall` command.

- Run `sudo usermod -s /usr/bin/zsh $(whoami)` to set _ZSH_ as the default shell.

- Open a new instance of the terminal with _ZSH_.

- Create an `id_ed25519` key pair using `OpenSSH` (with your GitHub email). Set a password for the private key.

- Configure your system to auto-access the private key with a system vault:
  - OS X: copy the contents of `ssh-config-osx` to the file `~/.ssh/config` (create this file if it doesn't exist).

- Configure your shell to auto-start `ssh-agent` when opened:
  - OS X: add the commands in `ssh-agent-osx.sh` to the end of `~/.zshrc`.
 
- Copy your public key with `pbcopy < ~/.ssh/id_ed25519.pub` and add it to the GitHub website as `Authentication Key`.

- Copy this project's `.gitconfig` to the `~` directory. Replace the file comments with appropriate values.

- Reload the shell with `source ~/.zshrc`. This is the only time you must type your SSH private key password.

- Run the _Oh my Zsh_ install command given by their [web page](https://ohmyz.sh/#install).

- Clone the _Spaceship Prompt_ repo to the _Oh my Zsh_ custom themes folder and symlink it to that folder:
  - `git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1`.
  - `ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"`

- Open your `~/.zshrc` and search for the `ZSH_THEME` variable definition. Change its value to `spaceship`: `ZSH_THEME="spaceship"`

- Copy the contents of `spaceship-config.sh` to the end of `~/.zshrc`.

- Clone the _Syntax Highlighting_ plugin to the _Oh my Zsh_ custom plugins folder: `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting`

- Clone the Zsh Autosuggestions plugin to the _Oh my Zsh_ custom plugins folder: `git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions`

- Open your `~/.zshrc` and search for the `plugins` variable definition. Add the cloned plugins to this array:

```sh
plugins=(
  # [previous plugins...]
  zsh-syntax-highlighting
  zsh-autosuggestions
)
```

- Reload the shell with `source ~/.zshrc`.

- All set! =)
