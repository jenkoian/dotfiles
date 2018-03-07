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
plugins=(git atom brew composer npm sublime svn-fast-info symfony2 vagrant osx)

source $ZSH/oh-my-zsh.sh
source ~/.bash_aliases

# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/ian/.composer/vendor/bin"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

[ -s "/Users/ian/.scm_breeze/scm_breeze.sh" ] && source "/Users/ian/.scm_breeze/scm_breeze.sh"

export NVM_DIR="/Users/ian/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="$HOME/.rbenv/bin:$PATH"

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

# Fix OSX maxfiles limit
ulimit -n 4096
