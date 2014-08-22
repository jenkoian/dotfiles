# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
alias webroot="~/Code"
alias standup="git log --since '1 day ago' --no-merges --pretty=format':%C(yellow)%h %aN%n %B%n' --author Jenkins"
alias clean-merged="git branch -d $( git branch --merged | grep -v '^\*' | grep -v 'master' )"

cd()
{
    builtin cd $1 && ls
}

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git symfony2 composer osx brew)

source $ZSH/oh-my-zsh.sh

# User configuration 
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"

[ -s "/Users/ian/.scm_breeze/scm_breeze.sh" ] && source "/Users/ian/.scm_breeze/scm_breeze.sh"

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

# Fix OSX maxfiles limit
ulimit -n 4096
