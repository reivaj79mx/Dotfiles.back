### ENVIRONMENT ###
export TERM="tmux-256color"
export GOPATH="$HOME/.go"
export GOBIN="$HOME/.go/bin"
export EXIFTOOL="/usr/bin/vendor_perl"
export PIP_BIN="$HOME/.local/bin"
export PATH="$PIP_BIN:$EXIFTOOL:$GOPATH/bin:$PATH"
export PYTHONPATH="$HOME/Documentos/devs/python/pyloteria/cli"
export PATH="$HOME/.poetry/bin:$PATH"
export PATH="$HOME/.local/share/gem/ruby/3.0.0/bin:$PATH"

# HISTORY 
export HISTORY_IGNORE="(ls|exit|clear|cd|cd ..|cd..)"
export HISTSIZE=25000
export HISTFILE=~/.zsh_history
export SAVEHIST=100000
setopt HIST_IGNORE_ALL_DUPS

### ANTIGEN ###
source ~/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle fzf
antigen bundle docker 

# Plugins externos
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle agkozak/zsh-z
antigen bundle DarrinTisdale/zsh-aliases-exa

# Theme
antigen theme denysdovhan/spaceship-prompt

# Tell Antigen that you're done.
antigen apply

### SPACESHIP PROMPT ###
SPACESHIP_GCLOUD_SHOW=false

### ALIAS ###
alias cfg-zsh="nvim ~/.zshrc"
alias feh="feh -.Z -g 1024x768+478+156"
alias dd1="cd /run/media/reivaj79mx/ADATA\ CH11"
alias syncdd="rsync -avP --delete --exclude '.Trash-1000' --exclude '\$RECYCLE.BIN' --exclude 'System Volume Information' /run/media/reivaj79mx/ADATA\ CH11/ /run/media/reivaj79mx/Backup"
alias syncdr="rsync -avP --dry-run --delete --exclude '.Trash-1000' --exclude '\$RECYCLE.BIN' --exclude 'System Volume Information' /run/media/reivaj79mx/ADATA\ CH11/ /run/media/reivaj79mx/Backup"
alias dotfiles='/usr/bin/git --git-dir=$HOME/Dotfiles/ --work-tree=$HOME'
alias cat=bat
alias top=ytop

### asdf ###
. $HOME/.asdf/asdf.sh
