# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
  # include .bashrc if it exists
  if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
  fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
  PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
  PATH="$HOME/.local/bin:$PATH"
fi

# set PATH so it includes user's private GOLang bin if it exists
if [ -d "$HOME/.local/go/bin" ] ; then
  PATH="$HOME/.local/go/bin:$PATH"
  export GOROOT="$HOME/.local/go"
  export GOPATH="${GOPATH}/bin"
fi
export PATH=$PATH:/usr/local/go/bin


alias sp="source ~/.sp"
alias lp="source ~/.profile "
alias 33='exa --git-ignore -T -L 5'
alias cs-restart='/usr/local/bin/ws-code-server-restart.sh'
alias attach='tmux a -t dev'
. <(mxmctl --show-completion)
. "$HOME/.cargo/env"
