alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias c="clear"
alias l='ls'
alias claer="clear"
alias sudo="sudo " # This allows us to use other aliases in sudo commnads

[[ `command -v batcat` ]] && alias bat="batcat" && alias cat="bat"
[[ `command -v btop` ]] && alias htop="btop"
[[ `command -v dust` ]] && alias du="dust -r"
[[ `command -v duf` ]] && alias df="duf"
[[ `command -v eza` ]] && alias ls='eza -lhRT -L 1 --no-permissions --group-directories-first'
[[ `command -v zoxide` ]] && alias cd="z"
[[ `command -v asp` ]] && alias asp="source asp"

# Because of the shenanigans we're doing below to stop us from jumping
# into zsh automatically at various points and so on, we need to unset
# the ZSH env var so that tmux can dump into zsh automatically if desired
# below. We really should be using chsh, except that we don't want it
# under TTY...
[[ `command -v tmux` ]] && alias tmux="ZSH= tmux"


# The following is how we're going to make colourized support TTY easy
# First, if we have fbterm installed let's alias so that we can have an
# FBTERM environment variable available for vim to detect
[[ `command -v fbterm` ]] && alias fbterm="FBTERM=1 fbterm"

# In ZSH, let's bind CTRL + I to accept the current autosuggest
#[[ `command -v bindkey` ]] && bindkey '^I' autosuggest-accept

[[ `command -v aws-azure-auth` ]] && alias aws-azure-login="aws-azure-auth"
