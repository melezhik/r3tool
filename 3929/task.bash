cat $root_dir/task.bash

$RAKUBIN -v

$RAKUBIN -e 'sub MAIN($x is rw) {}' 42 2>&1

echo
