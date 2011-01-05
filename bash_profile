# ~/.bash_profile: executed by bash(1) for login shells.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/login.defs
#umask 022

# include .bashrc if it exists
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# set PATH so it includes user's private bin if it exists
if [ -d ~/bin ] ; then
    PATH=~/bin:"${PATH}"
fi

# xset b 0

export RUBYOPT=rubygems
export PATH=/var/lib/gems/1.8:~/.gem/ruby/1.8/bin/:$PATH

#seahorse workaround https://bugs.launchpad.net/ubuntu/+source/gnome-keyring/+bug/201786
export SSH_AUTH_SOCK=0

#script that makes rvm work
if [[ -s $HOME/.rvm/scripts/rvm ]] ; then source $HOME/.rvm/scripts/rvm ; fi
