# Path to your oh-my-zsh installation.
export ZSH=/Users/abinsimon/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="terminalparty"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git python brew osx extract web-search)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin"
# export MANPATH="/usr/local/man:$MANPATH"


# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

##pipsi install addition to the path variable
export PATH="/Users/abinsimon/.local/bin:$PATH"

. `brew --prefix`/etc/profile.d/z.sh

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

#enabling pandoc and lunx to make reading .md files in terminal
#To read do : rmd file.md
rmd () {
  pandoc $1 | lynx -stdin
}

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#--------------------------------------------------------------------------------------------

# Custom

# source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval $(thefuck --alias)

#Alias
alias ss='ls -lht'
alias ll='ls -A -l'
alias la='ls -A'
alias lr='ls -lRht'
alias c='clear'
alias q='exit'
alias :q='exit'
alias d='less'
alias oo='vim ~/notes.org'
alias mkdir='mkdir -p'
alias o='open .'
# alias rm='rm -i'
alias rm='trash'
alias ffind='find . -name'
alias ..='cd ..'
#Check evey single file for a specific text and print surrounding 2 lines
alias here='find . -type f -print0|xargs -0 grep -C 2 -i'
alias server='python -m SimpleHTTPServer '
alias tn='tmux new -s'
alias ta='tmux attach -t'

# Alias to open multimedia folder in finder
alias fun='cd ~/Documents/Multimedia && open . && cd -'
# Alias to get into project folder
alias meh='cd ~/Documents/Projects'
# Alias to get into desktop folder
alias blah='cd ~/Desktop'

# Git alias

# Alias for easier commit
alias gu='git add -u && git commit'
# Git add
alias ga='git add'
# Easier push to origin master
alias gp="git push origin $(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/' | sed 's:^.\(.*\).$:\1:' | sed 's/^.//')"
# Git log and history alias 
alias gg='git lh'
alias gh='git hi'
alias gl='git lg'
# Git diff alias
alias gd='git diff'
#Git status alias
alias gs='git status'
alias g='git status -s'
#Git commit 
alias gc='git commit'

# More stuff
#eeeks
alias vim="nvim"
#Just because it happens all the time
alias ivm='vim'
#Open last vim session
alias viml='nvim -c :SLoad\ zzz'