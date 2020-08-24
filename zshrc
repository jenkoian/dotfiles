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
#alias clean-merged="git branch -d $( git branch --merged | grep -v '^\*' | grep -v 'master' )"

docker-rm-by-name()
{
    docker ps --filter name="$1*" -aq | xargs docker stop | xargs docker rm
}

cd()
{
    builtin cd $1 && ls
}

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git composer npm sublime svn-fast-info symfony2 vagrant osx)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/ianjenkins/.composer/vendor/bin:/usr/local/Cellar/github-markdown-toc/1.0.0/bin"

export PATH="$(brew --prefix git)/share/git-core/contrib/diff-highlight:$PATH"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

[ -s "/Users/ianjenkins/.scm_breeze/scm_breeze.sh" ] && source "/Users/ianjenkins/.scm_breeze/scm_breeze.sh"

export NVM_DIR="$HOME/.nvm"
#. "/usr/local/opt/nvm/nvm.sh"


if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="$HOME/.rbenv/bin:$PATH"

# Fix OSX maxfiles limit
ulimit -n 4096

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


# added by travis gem
[ -f /Users/ianjenkins/.travis/travis.sh ] && source /Users/ianjenkins/.travis/travis.sh

export HOMEBREW_GITHUB_API_TOKEN="changeme"

#eval "$(symfony-autocomplete)"

iterm2_print_user_vars() {
    iterm2_set_user_var phpVersion $(php -v | awk '/^PHP/ { print $2 }')
    iterm2_set_user_var rubyVersion $(ruby -v | awk '{ print $2 }')
    iterm2_set_user_var nodeVersion $(node -v)
}

export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"

# Install Ruby Gems to ~/gems
export GEM_HOME=$HOME/gems
export PATH=$HOME/gems/bin:$PATH
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
