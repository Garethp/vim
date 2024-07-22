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
[[ `command -v eza` ]] && alias ls='eza -lhRT -L 1 --no-permissions --git-ignore --group-directories-first'
[[ `command -v zoxide` ]] && alias cd="z"

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

# Next, if we're not in TTY (TTY will give us "linux" as the environment
# variable), and we have zsh installed, let's assume that we want zsh as
# our default shell and swap to it if we don't already have a ZSH env
# var present. This stops us from getting into a loop if we're in zsh and
# specifically tried to swap to bash for some reason
if [[ -z "${FBTERM}" && $TERM != "linux" && $TERM != "fbterm" && `command -v zsh` && -z "${ZSH}" ]]; then
    exec zsh -1
fi

# Next, we're in TTY let's execute fbterm immediately so that we don't have
# to worry about executing it manually
if [[ $TERM = "linux" ]]; then
    FBTERM=1 fbterm
fi

# Finally, if we're booting from fbterm, let's set some background and foreground
# colours so that colourized commands will work, set TERM=fbterm and clear the
# screen so that our colours can take effect
if [[ $FBTERM = "1" ]]; then
    echo -en "\e]P0222222" #black
    echo -en "\e]P8222222" #darkgrey
    echo -en "\e]P1803232" #darkred
    echo -en "\e]P9982b2b" #red
    echo -en "\e]P25b762f" #darkgreen
    echo -en "\e]PA89b83f" #green
    echo -en "\e]P3aa9943" #brown
    echo -en "\e]PBefef60" #yellow
    echo -en "\e]P4324c80" #darkblue
    echo -en "\e]PC2b4f98" #blue
    echo -en "\e]P5706c9a" #darkmagenta
    echo -en "\e]PD826ab1" #magenta
    echo -en "\e]P692b19e" #darkcyan
    echo -en "\e]PEa1cdcd" #cyan
    echo -en "\e]P7ffffff" #lightgrey
    echo -en "\e]PFdedede" #white

    export TERM=fbterm
    clear
fi
