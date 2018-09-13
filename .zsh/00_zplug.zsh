## This file must be run before other .zsh config

source ~/.zplug/init.zsh

# Let zplug manage zplug
zplug "zplug/zplug", hook-build:'zplug --self-manage'

# A next-generation cd command with an interactive filter
zplug "b4b4r07/enhancd", use:init.sh

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
zplug "plugins/github", from:oh-my-zsh
zplug "plugins/gradle", from:oh-my-zsh
zplug "plugins/rails", from:oh-my-zsh
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/pip", from:oh-my-zsh

# third party oh-my-zsh plugins
zplug 'RobertDeRose/virtualenv-autodetect', as:plugin # really slow

# Commands
zplug "rupa/z", use:z.sh
zplug "kmccormick/rsnapshot-timestamp", as:command

# Theme
#TODO move theme config somehwere else
# Modified https://github.com/bhilburn/powerlevel9k/wiki/Show-Off-Your-Config#v1rguls-configuration
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_FOLDER_ICON=''
# Set to false removes the tilde from the prompt
POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=false
POWERLEVEL9K_HOME_FOLDER_ABBREVIATION=""
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_DIR_PATH_SEPARATOR='  '
POWERLEVEL9K_VCS_COMMIT_ICON=' '
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status context dir dir_writable dropbox vcs nvm virtualenv)
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_STATUS_VERBOSE=false

zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme, at:next

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load
