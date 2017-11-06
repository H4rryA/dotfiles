# pipes.sh pls

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/harryarakkal/.oh-my-zsh
export PATH=$PATH:/usr/local/apache-maven-3.5.0/bin
export TERM=xterm-256color

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="hyperzsh"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh
source $ZSH/custom/update.zsh
source /Users/harryarakkal/Homework/cs225/.cs225dirs.zsh

# User configuration

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias emacs="/usr/local/Cellar/emacs-plus/25.3/Emacs.app/Contents/MacOS/Emacs -nw"

function ews(){
    echo "Hello $USER! Connecting to EWS now!"
    ssh arakkal2@linux.ews.illinois.edu
}

function jup(){
    echo "Starting up Jupyter"
    virtualenv venv
    source venv/bin/activate
}

source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
