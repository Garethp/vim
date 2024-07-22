# My own VIM config
This is my own personal vim config so that it's easy to download and install on machines, with many useful plugins and hopefully clean configuration for reading and adjustign

## Installation
 * Install the GNU Stow Tool
 * Clone this Repository
 * Run `git submodule init && git submodule update` to install plugins
 * Run `stow .` inside the main repo folder to create the Symlinks
 * Add `[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases` to your `.bashrc` file (and/or `.zshrc` file)

## Installing Extras
 * For `Ale` install `phpcs` and `eslint` globally, as well as any other linters you want Ale to use

## Plugins Included
 * [Pathogen](https://github.com/tpope/vim-pathogen) - Plugin Manager
 * [Ale](https://github.com/w0rp/ale) - Code Linting Engine
 * [Codi](https://github.com/metakirby5/codi.vim) - Live Preview of Scratch Code
 * [DelimitMate](https://github.com/Raimondi/delimitMate) - Automatic brace adder
 * [Vim Table Mode](https://github.com/dhruvasagar/vim-table-mode) - A Live Table Formatter for Markdown
 * [NERDCommenter](https://github.com/scrooloose/nerdcommenter) - A plugin to help comment and uncomment code
 * [NERDTree](https://github.com/scrooloose/nerdtree) - A tree file viewer in VIM
 * [NERDTreeTabs](https://github.com/jistr/vim-nerdtree-tabs) - Allows tabs in NERDTree to act more intuitively
 * [Vdebug](https://github.comi/Garethp/vdebug) - A plugin for working with XDebug 
 * [Vim Markdown Preview](https://github.com/JamshedVesuna/vim-markdown-preview) - A plugin to show a live preview of Markdown in the browser
 * [Vim Fugitive](https://github.com/tpope/vim-fugitive) - Popular wrapper around vim
 * [Vim JSON](https://github.com/elzr/vim-json) - Better JSON syntax
 * [Vim Tmux Navigator](https://github.com/christoomey/vim-tmux-navigator) - Adds seamless vim/tmux navigation
 * [Vim TOML](https://github.com/cespare/vim-toml) - TOML File Syntax
 * [Vimux](https://github.com/benmills/vimux) - Running a command from vim in a tmux shell
 * [Vim JavaScript](https://github.com/pangloss/vim-javascript) - Support for JavaScript
 * [Vim TypeScript](https://github.com/leafgarland/typescript-vim) - Support for TypeScript
 * [Vim JSX Pretty](https://github.com/MaxMEllon/vim-jsx-pretty.git) - Support for JSX
 * [Vim Test](https://github.com/vim-test/vim-test.git)

## Personal Configurations

### Vim Preferences
Most of the configurations for this vim setup can be found in the `.vim/config/` folder, but here's a quick rundown

 * `<Leader>` is at the moment defaulte to `\`
 * Colourscheme is [darcula](https://github.com/blueshirts/darcula)
 * When you're in edit mode, the line should be slightly highlighted to indicate that you're in edit mode
 * Autocomplete can be toggled by `Ctrl-Space`
 * Indentation is set to 4 spaces
 * In Visual Mode and Normal Mode, the `Tab` key will indent the selected lines
 * The `Shift-Tab` combination unindents lines
 * Ale has been configured to lint PHP to `PSR-2` standards
 * `Ctrl-/` has been mapping to have NERDCommenter toggle comments in Normal, Visual and Insert Mode
 * Pressing `F3` in normal mode will toggle NERDTree
 * Pressing `<Leader>d` deletes something without copying it
 * Pressing `<Leader>p` in `Visual Mode` pastes over the current text
 * For split window navigation, instead of `Ctrl-W [HJKL]`, I've set it so you can just do `Ctrl+[HJKL]`

### Tmux Preferences
 * `<Prefix>` has been changed to `Ctrl + Space`
 * Splitting panes has been bound to `<Prefix> + -` and `<Prefix> + \`
 * Split nagivation can be done with CTRL+[HJKL] to match vim

## Using the plugins

### Codi
To enable Codi, use the `:Codi` command, to disable it use `:Codi!:`

### PHP Complete Extended
It's meant to be a better PHP autocompletion. Requires you to install `vimproc`, which itself requires a `make` command.

### NERDTree
Open NERDTree with `:NERDTree`, or open it in (improved) tab mode with `:NERDTreeTabsToggle`.
Alternatively, I've mapped `F3` in normal mode to `:NERDTreeTabsToggle`
When over file, use `o` to open the file, or `t` to open the file in a tab.
When over a folder, press `m` to manipulate the folder (Add new files or folders, or moving it).
To move tabs, use `gt` to move to the next tab, `gT` for the previous and `{num}gt` to go to a specific tab
See `:help NERDTree` for more information

### Vim Table Mode
To toggle table editing mode, type `<Leader>tm`

### NerdCommenter
To see the manual, use the `:help nerdcommenter` command

### Vim Markdown Preview
Install `grip` through `pip install grip` to start, then when editing a markdown file, save it and use `Ctrl-P`, and a preview will open in the browser

### Vim Fugitive
Use `:Gstatus` to show the git status, with the `-` key to add a file.

Use `:Gblame` to annotate the file

See `:help fugitive` for more

### Vimux
The key combination `<Leader>vp` will prompt you for a command to run in a tmux pane, 

`<Leader>vl` will run the last command in tmux

`<Leader>vz` will "zoom" the tmux pane, and then `<Prefix> z` will zoom back out

## Suggested Extras
This repo includes suggestions for a few extra configs and aliases for some extra nicities

### Extra Utilities
 * [Atuin](https://atuin.sh/) - A nice tool for managing bash history
 * [Bat](https://github.com/sharkdp/bat) - A replacement for `cat`
 * [Btop](https://github.com/aristocratos/btop) - A replacement for `htop`
 * [Duf](https://github.com/muesli/duf) - A replacement for `df`
 * [Dust](https://github.com/bootandy/dust) - A replacement for `du`
 * [Eza](https://github.com/eza-community/eza) - A nice `ls` replacement
 * [Fzf](https://github.com/junegunn/fzf) - A fuzzy search tool. Suggested install method is to clone and run an install script
 * [The Silver Searcher](https://github.com/ggreer/the_silver_searcher) - A fast and useful code searching tool
 * [Tldr](https://tldr.sh/) - TL;DR for man pages
 * [Zoxide](https://github.com/ajeetdsouza/zoxide) - A smart replacement for `cd`

### Oh My Zsh
While this repo doesn't include any config for Oh My Zsh (yet), it is a nice tool to use. Additionally, the config in
`.bash_aliases` file will automatically swap from bash to `zsh` if `zsh` is installed. We do it in bash and not using
`chsh` because we don't want to use it in TTY (see the next section). It won't drop into zsh if any of the following are
true:

 * We're in TTY
 * We're in FbTerm (Detected by a `FBTERM` environment variable that's added as an alias)
 * The `zsh` command is not present
 * A `ZSH` environment variable is present, indicating that we started in zsh and are trying to jump to bash manually

### Frame Buffer Mode
If you're interested in running in TTY mode for some reason, try installing the tool `fbterm` and running the following:
`usermod -aG video $USER`. With the scripts included in `.bash_aliases` when logging in through TTY you'll automatically
be put into FbTerm, a Frame Buffer terminal emulator that supports colour. The config included should allow for tmux and
vim to work seamlesslesly in colour mode. 

## TODO
 * Possibly add some ZSH config
