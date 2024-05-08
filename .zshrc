# The following lines were copied from script runs and manually modified

# Lines copied from compinstall
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' completions 1
zstyle ':completion:*' glob 1
zstyle ':completion:*' matcher-list '+' '+m:{[:lower:]}={[:upper:]}' '+m:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+r:|[._-]=** r:|=** l:|=*'
zstyle ':completion:*' max-errors 2 numeric
zstyle ':completion:*' prompt 'You typed %e errors. Shame! Take some corrections:'
zstyle ':completion:*' substitute 1
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines copied from compinstall

# Lines copied from zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob notify
unsetopt autocd beep nomatch
bindkey -e
# End of lines copied from zsh-newuser-install
