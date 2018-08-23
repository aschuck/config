if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

__git_ps1 () 
{ 
    local b="$(git symbolic-ref HEAD 2>/dev/null)";
    if [ -n "$b" ]; then
        printf " (%s)" "${b##refs/heads/}";
    fi
}

alias rgrep="grep -r"
alias s="cd ~/src"

export PATH=$PATH:~/bin:/usr/local/git/bin
export CLICOLOR=1  # for ls --color
export PS1='[\h \[\033[0;36m\]\W\[\033[0m\]$(__git_ps1 " \[\033[1;32m\](%s)\[\033[0m\]")]\$ '
