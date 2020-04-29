# executes a command assuming a program with the same name as the first
# argument is not running.
# e.g. executes "process -a -b" only if "process" is not currently running.

if !(pgrep -x $1 > /dev/null) then
	$@
fi

