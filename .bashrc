# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Put your fun stuff here.
#
# Ensure XDG_RUNTIME_DIR is set
if test -z "$XDG_RUNTIME_DIR"; then
    export XDG_RUNTIME_DIR=$(mktemp -d /tmp/$(id -u)-runtime-dir.XXX)
fi

# Executes Startx from tty
if [[ -z "$DISPLAY" && "$XDG_VTNR" -eq 1 ]]; then
    exec startx
fi

# migrates to fish shell
# [ -x /usr/local/bin/fish ] && SHELL=/usr/local/bin/fish exec fish

# migrates to z shell
[ -x /usr/bin/zsh ] && SHELL=/usr/bin/zsh exec zsh
. "$HOME/.cargo/env"

