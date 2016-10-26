# Path to your oh-my-zsh installation.
  export ZSH=/home/danielrb/.oh-my-zsh

xset -b
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"

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
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"
 HIST_STAMPS="yyyy/mm/dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git chucknorris common-aliases dir-history vi-mode web-search)

# User configuration

  export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 #if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 #else
   #export EDITOR='gvim'
 #fi

# Compilation flags
 export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias clc="clear ; ls"
alias clcl="clear ; ls -lh"
alias clcla="clear ; ls -lah"
alias audio="pavucontrol &"
alias vimrc="vim ~/dotfiles/vim/vimrc"
alias i3config="vim ~/dotfiles/i3/config"
alias pzip="zip -re" # encrypt with password and zip recursevrly
alias reddit="rtv"
alias tesi="clear; cd ~/Dropbox/tesi/; pwd; ls; echo "ToDo"; todo -c tesi"
alias te="clear; cd ~/Dropbox/tesi/; pwd; ls; echo "ToDo"; todo -c tesi"
alias ldpc="cd ~/Dropbox/tesi/ldpc/hw"
alias qrs="clear; cd ~/Dropbox/EE6103/heart_rate_monitor/; pwd; ls; todo -c qrs"
alias ewb="clear; cd ~/gdrive/WTINE/; pwd; ls; drive pull"
alias t="clear; echo "ToDo"; todo"
alias tt="clear; echo "ToDo-Tesi"; todo -c tesi"
alias matmat="matlab -nojvm -nodisplay -nosplash"
alias toto="clear; echo "todo"; todo"
alias spotify="blockify & spotify --force-device-scale-factor=1.0000001 &"
alias r="ranger"
alias sd="echo "shuttingdown"; sudo shutdown -h now"
alias rb="echo "Rebooting!"; sudo reboot -h now"
alias rmvimswp="rm ~/.vim/tmp/*.swp"
alias ucc="ssh -X -C danielrb@www.ue.ucc.ie"


#Vim-like shell interface
set -o vi

#add my own bin
 if [ -d $~./bin ]; then
        export PATH=/home/danielrb/bin:$PATH
 fi

#add Xilinx path
export VIVADO=/home/Xilinx/Vivado/2015.4/
 if [ -d $VIVADO/bin ]; then
        export PATH=$PATH:$VIVADO/bin #:$PATH
 fi

set bell-style none
#make caplocks ESC
#cap2esc

#show nice info and truncate
#screenfetch -t 

#Chuck Norris words of wisdom
#chuck_cow

############## Cppsim Configuration (General) ##############

### Setting MATLAB_SHELL as below fixes some issues when running
### Cppsim within Matlab
export MATLAB_SHELL=/bin/sh

### Used by Cppsim and CppsimView binaries and Cppsim Cadence GUI
export CPPSIMHOME=$HOME/CppSim
### Used within included $CPPSIM/cds/cds.lib and $CPPSIM/cds/.cdsinit files
### Also used by PLL Design Assistant
export CPPSIMSHAREDHOME=$HOME/CppSim/CppSimShared
export PATH=$PATH:$CPPSIMSHAREDHOME/bin

export WINEARCH=win32

echo "TO-DO list"
todo

export RANGER_LOAD_DEFAULT_RF=FALSE
