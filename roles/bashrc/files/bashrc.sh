#!/usr/bin/env bash

## Aliases
alias l='clear; pwd; exa --icons --sort modified --group-directories-first -lh --git'
alias lg='lazygit'
alias la='l -a'
alias b='bat --line-range :1000 --color always --theme base16'
alias back='cd ..; l'

export SHNAME=$(echo $SHELL | xargs basename)

## Zoxide
eval "$(zoxide init $SHNAME)"

## BAT
export BAT_THEME="gruvbox-dark"

## FZF
eval "$(fzf --$SHNAME)"
export FZF_CTRL_T_OPTS="
  --walker-skip .git,node_modules,target
  --preview 'bat -n --color=always {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'"
# CTRL-/ to toggle small preview window to see the full command
# CTRL-Y to copy the command into clipboard using pbcopy
export FZF_CTRL_R_OPTS="
  --preview 'echo {}' --preview-window up:3:hidden:wrap
  --bind 'ctrl-/:toggle-preview'
  --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
  --color header:italic
  --header 'Press CTRL-Y to copy command into clipboard'"
export FZF_TMUX_OPTS='-p80%,60%'
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
. ~/.tinted-fzf-gruvbox.sh

## GO
export PATH="$PATH:/usr/local/bin/go/bin"

## RUST
. "$HOME/.cargo/env"

## NODEJS
export PATH="$PATH:/root/.local/share/fnm:./node_modules/.bin"
eval "$(fnm env)"
eval "$(fnm completions --shell $SHNAME)"

## PYENV
. ~/.pyenvrc

## DIRENV
eval "$(direnv hook $SHNAME)"
