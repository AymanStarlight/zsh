# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


eval "$(starship init zsh)"

function kitty_theme() {
  rm ~/.config/kitty/theme.conf && ln -s ./kitty-themes/1$.conf ~/.config/kitty/theme.conf
}

alias zshconfig="nvim ~/.zshrc"
alias zshrefresh="source ~/.zshrc"
alias update="sudo apt update && sudo apt upgrade -y && flatpak update -y && sudo snap refresh"
alias ls="exa -a --icons"
alias lst="exa -a --tree --icons"
alias changelgbg="sudo ./jammy-change-gdm-background"
alias mailhog="~/go/bin/MailHog"
alias kittyc="nvim ~/.config/kitty/kitty.conf"
alias vim="nvim"
alias as="sudo ~/.local/share/JetBrains/Toolbox/apps/android-studio/bin/studio.sh"

export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH=/usr/local/bin:${PATH}
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi
export PATH=/opt/maven/bin:$PATH
