cat $root_dir/task.bash

$RAKUBIN -v

$RAKUBIN -e '(my @a[1]>>++).raku'
