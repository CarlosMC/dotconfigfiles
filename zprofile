export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

if [[ "$OSTYPE" = "darwin"* ]]; then
	PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
	MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
fi

