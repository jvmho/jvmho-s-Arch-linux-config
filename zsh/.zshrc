# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
# End of lines configured by zsh-newuser-install

ZSH_AUTOSUGGESTIONS_HIGHLIGHT_STYLE="fg=#6D3B22"

# Autosuggestions

autoload -Uz compinit && compinit
zstyle ':completion*:*:git:*' script ~/.zsh-git-completion.zsh

[[ -f ~/.zsh_prompt ]] && source ~/.zsh_prompt
