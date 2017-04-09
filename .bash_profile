
# Git Alias
alias gs='git status'
alias ga='git add'
alias gl='git log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%C(cyan)\\ [%cn]" --decorate --date=short'
alias gd='git diff'
alias gdc='git diff --cached'
alias gds='git diff --staged'
alias gc='git commit'
alias gcm='git commit -m '
alias grh='git reset HEAD'


# Docker Commands
alias dps='docker ps'
alias dr='docker run'
alias dkill='docker kill'
alias drm='docker rm'


# Source .bashrc
source ~/.bashrc

# Helper Methods
parse_git_branch(){
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
# Set Term Colors
export TERM=xterm-256color
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[35;1m\]\$(parse_git_branch)\[\033[m\]\$ "
