export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH

export PATH="bin:~/bin:$PATH" # ensure this is always first
shopt -s checkhash # force path search on stale cache detected

if [[ -s ~/perl5/perlbrew/etc/bashrc ]]; then
  source ~/perl5/perlbrew/etc/bashrc
fi

for file in "$HOME"/.bash_profile.d/*.sh; do
  source "$file"
done

export VISUAL=$(first_of "subl -w" "mate -w" "nano -w" vi)
export EDITOR=$VISUAL
#export GIT_EDITOR=`first_of "mate -wl1" "nano -w" vi`

ulimit -n 10240

test -e ${HOME}/.iterm2_shell_integration.bash && source ${HOME}/.iterm2_shell_integration.bash

alias be='bundle exec'
alias gco='git checkout'
alias gcod='git checkout develop'
alias gcom='git checkout master'
alias killruby='killall -9 ruby'
alias logdev='tail -f log/development.log'
alias logprod='heroku logs --tail -r heroku-production'
alias logdemo='heroku logs --tail -r heroku-demo'
alias loguat='heroku logs --tail -r heroku-uat'
alias logstaging='heroku logs --tail -r heroku-staging'
alias ms='bundle exec middleman server'
alias mb='bundle exec middleman build'
alias pera='cd /Users/pierrelapree/Dropbox\ \(Personal\)/Code/concilia'
alias puma='bundle exec puma -C config/puma.rb -p 5000'
alias rdm='be rake db:migrate'

if which rbenv > /dev/null; then
  export RBENV_ROOT=/usr/local/var/rbenv
  eval "$(rbenv init -)"
fi
