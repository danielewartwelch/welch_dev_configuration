#
#up and down arrows for history
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# for arrow key up/down history search
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'


[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias bashprofile="atom ~/.bash_profile"
alias be="bundle exec"
alias cds="cd ~/Documents/UT/selenium"
alias cdo="cd ~/Documents/UT/orders"
alias gc="git checkout"
alias gpu='git push -u origin $(git rev-parse --abbrev-ref HEAD)'
alias src='source ~/.bash_profile'
alias dbreset="bundle exec rake db:reset && bundle exec rake db:seed_convenience"


# Show dirty state in prompt when in Git repos
#gib color
export GIT_PS1_SHOWDIRTYSTATE=1

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[32m\]\w\[\033[95m\]\$(parse_git_branch)\[\033[00m\] $ "


# Set terminal to store only unique commands in the history
export HISTCONTROL=ignoredups:erasedups

# Ignore commands from history
export HISTIGNORE="history:ls:ll:lla:l1:pwd:clear"

# Save History
export HISTFILE=~/.bash_history

# Append history entries
shopt -s histappend

# After each command, save and reload history (available across all terminal windows)
export PROMPT_COMMAND="history -a; history -c; history -r; history -a; history -c; history -r"

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export NODE_OPTIONS=--max_old_space_size=4096

#use tab to autocomplete git commands and branch names
# requires `curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash`
Step 2: Update .bash_profile
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
