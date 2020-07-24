#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#	source "${XDG_CACHE_HOME:-$HOME/.cache}p10k-instant-prompt-${(%):-%n}.zsh"
#fi

zplug "romkatv/powerlevel10k", as:theme, depth:1

source ~/.zsh/themes/.p10k.zsh