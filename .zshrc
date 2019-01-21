export ZSH="$(antibody home)"/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh
DISABLE_AUTO_UPDATE="true"
ZSH_THEME=

# Configure some of the stuff we're about to load
POWERLEVEL9K_MODE='nerdfont-complete'
DEFAULT_USER=$USER
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir drush_alias vcs status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vi_mode time)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_VCS_GIT_ICON=''
POWERLEVEL9K_VI_INSERT_MODE_STRING=''
POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='black'
POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND='black'
POWERLEVEL9K_VI_COMMAND_MODE_STRING='EDIT'
POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND='black'
POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND='002'
POWERLEVEL9K_TIME_FOREGROUND='blue'
POWERLEVEL9K_TIME_BACKGROUND='000'
POWERLEVEL9K_STATUS_OK_BACKGROUND="green"
POWERLEVEL9K_STATUS_OK_FOREGROUND="black"
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="red"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="black"

# Ignore dupes in history substring search
setopt HIST_IGNORE_ALL_DUPS

source ~/.zsh_plugins.sh

# Show output from time for anything that takes longer than this
REPORTTIME=3
# And make the format pretty
TIMEFMT="${fg_bold[yellow]}'%J' took %*E$reset_color"

# Use vim
export EDITOR='nvim'

# Instantiate rbenv
eval "$(rbenv init -)"

# Instantiate nodenv
eval "$(nodenv init -)"

# Instantiate fasd
eval "$(fasd --init auto)"

# Instantiate corrections
eval "$(thefuck --alias gah)"
THEFUCK_REQUIRE_CONFIRMATION=false

# Grab aliases
source $HOME/.zsh_aliases

