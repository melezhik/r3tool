cat $root_dir/task.bash

$RAKUBIN -v

$RAKUBIN -e 'close $*OUT; say "hi"'
