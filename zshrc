# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# My own aliases
alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"
alias papefetch="neofetch --backend w3m"
alias lah="exa -abghHliS --git"
alias pukeskull="sh /home/jon/Documents/gits/Color-Scripts/color-scripts/pukeskull"
alias dAt="sh /home/jon/Documents/random_scripts/drawAterminal.sh"
alias lsdir="exa -1D --icons | lolcat"
alias hexedit="hexedit --color"
alias oggart="/home/jon/Documents/random_scripts/ogg-cover-art.sh"
alias ytdl="/home/jon/Documents/random_scripts/ytdl.sh"
# alias kiff="kitty +kitten diff"
alias cd1="cd /mnt/d6f352a2-5fc3-42ed-8bef-e465e7933828/"
alias cd2="cd /mnt/0056EF2156EF15E6/"
alias cdjc="cd /mnt/d6f352a2-5fc3-42ed-8bef-e465e7933828/jc141/"
alias ls="exa --icons"
alias vim="nvim"
# alias hist10="history 0 | awk 'BEGIN {FS="[ \t]+|\\|"} {print $3}' | sort | uniq -c | sort -nr | head -n 10"
