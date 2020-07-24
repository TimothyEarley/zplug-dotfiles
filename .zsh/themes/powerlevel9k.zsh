#TODO move theme config somehwere else
# Modified https://github.com/bhilburn/powerlevel9k/wiki/Show-Off-Your-Config#v1rguls-configuration
POWERLEVEL9K_MODE='nerdfont-complete'
# POWERLEVEL9K_DISABLE_RPROMPT=true # no right prompt

#POWERLEVEL9K_SHORTEN_DIR_LENGTH="$((`tput cols` - 50 ))"
#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_absolute_chars"
#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD='300'
# command_execution_time context

POWERLEVEL9K_FOLDER_ICON=''
# Set to false removes the tilde from the prompt
POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=false
POWERLEVEL9K_HOME_FOLDER_ABBREVIATION=""
POWERLEVEL9K_HOME_ICON='  '
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_DIR_PATH_SEPARATOR='  '
POWERLEVEL9K_VCS_COMMIT_ICON=' '

# TODO Add left circle \uE0B6  to start of prompt
#TODO check output in dropbox folder when active
#POWERLEVEL9K_WHITESPACE_BETWEEN_LEFT_SEGMENTS=""

#zsh_cap() {
#	echo ''
#	CURRENT_BG='NONE'
#}
#POWERLEVEL9K_CUSTOM_CAP="zsh_cap"
#POWERLEVEL9K_CUSTOM_CAP_BACKGROUND="none"
#POWERLEVEL9K_CUSTOM_CAP_FOREGROUND="blue"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status context dir dir_writable dropbox vcs nvm virtualenv)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_STATUS_VERBOSE=false

# multiline
#POWERLEVEL9K_LEFTT_SEGMENT_SEPARATOR="\uE0B4"
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{blue}\ue0b6%F{white}"
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{blue}\ue0b6%F{white} "
#POWERLEVEL9K_PROMPT_ON_NEWLINE=true


zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme, at:next
