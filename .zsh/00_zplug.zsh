## This file must be run before other .zsh config

# instant prompt for powerlevel10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
	source "${XDG_CACHE_HOME:-$HOME/.cache}p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.zplug/init.zsh

# Let zplug manage zplug
zplug "zplug/zplug", hook-build:'zplug --self-manage'

# A next-generation cd command with an interactive filter
#zplug "b4b4r07/enhancd", use:init.sh

# Warn you when you run a command that you've got an alias for
zplug "djui/alias-tips"

zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"

# oh-my-zsh base config
# This is a selection of the available libs
zplug "robbyrussell/oh-my-zsh", use:"lib/{completion,correction,git,grep,history,key-bindings,termsupport}.zsh"
# oh-my-zsh plugins
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh
zplug "plugins/docker-compose", from:oh-my-zsh
zplug "plugins/github", from:oh-my-zsh
zplug "plugins/gradle", from:oh-my-zsh
#zplug "plugins/rails", from:oh-my-zsh
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/pip", from:oh-my-zsh
zplug "plugins/kubectl", from:oh-my-zsh
zplug "plugins/helm", from:oh-my-zsh
zplug "plugins/terraform", from:oh-my-zsh
zplug "plugins/dotenv", from:oh-my-zsh

# third party oh-my-zsh plugins
zplug 'RobertDeRose/virtualenv-autodetect', as:plugin # really slow

# Commands
zplug "rupa/z", use:z.sh
zplug "kmccormick/rsnapshot-timestamp", as:command

# zsh profiler (TODO is not on PATH)
#zplug "bdesham/2d7ef99f93b226be29e01cadcad37405", from:gist, as:command

# Theme
#source ~/.zsh/themes/powerlevel9k.zsh
#source ~/.zsh/themes/spaceship.zsh
source ~/.zsh/themes/powerlevel10k.zsh

# Install plugins if there are plugins that have not been installed
#if ! zplug check --verbose; then
#    printf "Install? [y/N]: "
#    if read -q; then
#        echo; zplug install
#    fi
#fi

# Then, source plugins and add commands to $PATH
zplug load
