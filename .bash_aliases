# Alias

alias cdws="cd ~/documents/workspace"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

## Git

alias gdp="git checkout dev && git pull"
alias grc="git rebase --continue"
alias grs="git rebase --skip"
alias dt="git difftool"
alias dts="git difftool --staged"
alias mt="git mergetool"
alias gitclearbr='git branch --merged | grep -v "dev" | grep -v "main" | grep -v "master" | xargs git branch -d'

### Git worktree

alias wta='_wta(){ bash ~/bash-scripts/git-worktree/worktree-add.sh "$1"; }; _wta'
alias wtc='_wtc(){ bash ~/bash-scripts/git-worktree/worktree-change.sh "$1"; }; _wtc'
alias wtr='_wtr(){ bash ~/bash-scripts/git-worktree/worktree-remove.sh "$1"; }; _wtr'
alias wtl='git worktree list'

## Docker Compose

alias dcup="docker-compose up -d"
alias dcd="docker-compose down"
alias dcdv="docker-compose down -v"

## Bash Scripts

alias gdm="bash ~/bash-scripts/git-delete-merged.sh"
alias lazyrebase="bash ~/bash-scripts/lazy-rebase.sh"
alias webon="bash ~/bash-scripts/websites-online.sh ~/bash-scripts/sites.txt"
alias pageson='_pgo(){ bash ~/bash-scripts/check-pages-of-website.sh "$1"; }; _pgo'
alias sslcheck="bash ~/bash-scripts/ssl-check.sh ~/bash-scripts/sites.txt"
alias csscomp="bash ~/bash-scripts/css-compile.sh"
alias dockerwp="bash ~/bash-scripts/docker-compose-wordpress.sh"
alias checkall='_cha(){ while read p; do echo -e "===== $p ===== \n"; bash ~/bash-scripts/check-pages-of-website.sh $p; done <~/bash-scripts/sites.txt; }; _cha'
