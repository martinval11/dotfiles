export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="gianu"

export PATH="/home/tux/.bun/bin:/home/tux/.turso:/home/tux/.local/share/pnpm:/home/tux/.bun/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/sbin:/sbin:/bin:/home/tux/.local/bin"

# CASE_SENSITIVE="true"

# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
#DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
 DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
 HIST_STAMPS="dd/mm/yyyy"

# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias g='git'
alias gc='git clone --depth=1'
alias gs='git status'
alias ga='git add'
alias gb='git branch -M'
alias gd='git diff'
alias gco='git checkout'
alias gcm='git commit -m'
alias gpl='git pull'
alias gps='git push -u origin'
alias nv='nvim'
alias c='clear'
alias bd='bun dev'
alias bi='bun install'
alias bt='bun run test'
alias br='bun remove'
alias xi='doas xbps-install'
alias xr='doas xbps-remove -Rf'
alias sy='doas xbps-install -Su'
alias ht='htop'
alias s='sensors'
alias th='touch'
alias mk='mkdir -p'
alias sl='ls'
alias S='doas poweroff'
alias R='doas reboot'
alias conf='nvim ~/.zshrc && zsh'
alias m='mocp'
alias t='tmux'
alias rf='rm -rf'
alias py='python3'
alias requests='watch -n8 lsof -i'

eval "$(starship init zsh)"
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# bun completions
[ -s "/home/tux/.bun/_bun" ] && source "/home/tux/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/home/tux/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
