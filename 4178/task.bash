cat $root_dir/task.bash

$RAKUBIN -v

echo ">>>"

$RAKUBIN -e 'close $*OUT; say "hi"' 2>&1

echo
