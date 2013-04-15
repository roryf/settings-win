#echo "loading .bashrc"
#source ~/.profile


# History
export HISTCONTROL=erasedups	# when adding an item to history, delete itentical commands upstream
export HISTSIZE=10000		# save 10000 items in history
shopt -s histappend		# append history to ~\.bash_history when exiting shell

# Lazy aliases
alias l='ls -l'
alias la='ls -Al'
alias ..='cd ..'
alias tree='tree -C'
alias trls='tree -C | less -R'	# -C outputs colour, -R makes less understand color
alias mode='(set -o | grep emacs.*on >/dev/null 2>&1 && echo "emacs mode" || echo "vi mode")'

# git aliases
# http://titusd.co.uk/2010/08/29/use-g-as-an-alias-for-git-without-losing-autocompletion
alias g='git'
alias gp='git pull --prune'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gd='git diff'
alias gdn='git diff --name-only'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"

# Functions
# Fuzzy cd
# Usage:
#    cdf public
# Changes to repos-public directory.
# http://dpaste.org/P59h/
function cdf() {
  cd *$1*/
}

# Reload .bashrc
alias refresh='. ~/.bashrc'

alias subl='/c/Program\ Files/Sublime\ Text\ 2/sublime_text.exe'
alias mate='subl -w'