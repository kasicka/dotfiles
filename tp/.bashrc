# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

alias sai='sudo dnf install -y'
alias syu='sudo dnf update -y'
alias npm='sudo npm'
alias bs='upower -i /org/freedesktop/UPower/devices/battery_BAT0'
alias bs1='upower -i /org/freedesktop/UPower/devices/battery_BAT1'
alias ds='sudo dnf search'
alias python='python3'
alias yli='dnf list installed'
alias idea='./idea/idea-IU-139.1117.1/bin/idea.sh'
alias rbs='rpmdev-bumpspec'
alias rbc='rpmdev-bumpspec -c'
alias n2r='~/nodejs/npm2rpm/bin/npm2rpm'
alias syr='sudo dnf remove -y'
alias syi='sudo dnf install'
alias sri='sudo rpm -i'
alias sublime='cd /usr/local/sublime-text-3/sublime_text_3 && ./sublime_text && cd'
alias dnf='sudo dnf'
alias cdf='cd ~/dockerfiles/df/'
alias vbrc='vim ~/.bashrc && source ~/.bashrc'
alias cbrc='cat ~/.bashrc'

#alias s2iinstall='export GOPATH=$HOME/gopath && go get github.com/openshift/source-to-image && cd ${GOPATH}/src/github.com/openshift/source-to-image && export PATH=$PATH:${GOPATH}/src/github.com/openshift/source-to-image/_output/local/go/bin/ && hack/build-go.sh'

alias stiinstall='export GOPATH=$HOME/gopath && go get github.com/kasicka/source-to-image && cd ${GOPATH}/src/github.com/kasicka/source-to-image && export PATH=$PATH:${GOPATH}/src/github.com/kasicka/source-to-image/_output/local/go/bin/ && hack/build-go.sh'

alias fhappr7='s2i build --env="NODE_ENV=production" https://github.com/feedhenry-templates/helloworld-cloud.git registry.access.redhat.com/openshift3/nodejs-010-rhel7 fh-app --loglevel=1 --force-pull=false'

alias fhappc7='s2i build --env="NODE_ENV=production" https://github.com/feedhenry-templates/helloworld-cloud.git openshift/nodejs-010-centos7 fh-app --loglevel=1 --force-pull=false'

#fedora packaging aliases
alias fr='time fedora-review -m fedora-rawhide-x86_64'
alias fre='time fedora-review -m epel-7-x86_64'
alias fc26='fedpkg switch-branch f26 && git merge master && git push && fedpkg build'
alias fc25='fedpkg switch-branch f25 && git merge master && git push && fedpkg build'
alias fcepel7='fedpkg switch-branch epel7 && git merge master && git push && fedpkg build'

#git aliases
alias gba='git branch -a'
alias gst='git status'

#docker aliases
alias dim='docker images'
alias dps='docker ps -a'
alias vdf='vim Dockerfile'
alias vdf7='vim Dockerfile.rhel7'
alias drt='docker run -ti'

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:${GOPATH}/src/github.com/openshift/source-to-image/_output/local/bin/linux/amd64/
