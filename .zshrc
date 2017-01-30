#
#
#Created by newuser for 5.3.1
#Exports {{{
export ZSH=$HOME/.oh-my-zsh
export EDITOR=/usr/bin/vim
export SSH_KEY_PATH="~/.ssh/rsa_id"
export HISTFILE=~/.zsh_history
export HISTSIZE=1000
export SAVEHIST=$HISTSIZE
# You may need to manually set your language environment
#export LANG=ru_RU.UTF-8
#PATH=/bin:/usr/bin:/usr/local/bin:${PATH}
export PATH
# }}}

# Tmux {{{
function tmuxopen(){
    tmux attach -t $1
}

function tmuxnew(){
    tmux new -s $1
}

function tmuxkill(){
    tmux kill-session -t $1
}
#}}}

ZSH_THEME="bullet-train"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"


# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$HOME/.zsh_custom

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

autoload -U compinit promptinit
compinit
promptinit

# Для pacman
[[ -a $(whence -p pacman-color) ]] && compdef _pacman pacman-color=pacman
# Корректировка ввода
setopt CORRECT_ALL
# Если в слове есть ошибка, предложить исправить её
SPROMPT="Ошибка! ввести %r вместо %R? ([Y]es/[N]o/[E]dit/[A]bort) "

setopt autocd

# При совпадении первых букв слова вывести меню выбора
zstyle ':completion:*' menu select=long-list select=0
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}


alias ls='ls --color=auto'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias python='python3'
alias vi='vim'
alias cdd='/cygdrive/d/work/'
#if [ -f ~/.git-completion.zsh ]; then
#    . ~/.git-completion.zsh
#fi

#if [ -f ~/.git-prompt.zsh ]; then
#    . ~/.git-prompt.zsh
#fi

#function precmd() {
#    PSVAR=`git_prompt_precmd`
#}

#prompt fade2 blue grey blue
#prompt fade blue grey blue

#alias -s {avi,mpeg,mpg,mov,m2v}=vlc
#alias -s {odt,doc,sxw,rtf}=openoffice.org
autoload -U pick-web-browser
alias -s {html,htm}=firefox

# включить историю команд
setopt APPEND_HISTORY
# убрать повторяющиеся команды, пустые строки и пр.
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
set HIST_REDUCE_BLANKS
