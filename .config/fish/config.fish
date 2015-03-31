# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme robbyrussell

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
set fish_plugins brew gem chruby

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

source /usr/local/share/chruby/chruby.fish
source /usr/local/share/chruby/auto.fish

chruby 2.1

set -x GOPATH $HOME/go

alias wdi='cd ~/dev/WDI_DTLA_1/'
set fish_greeting
