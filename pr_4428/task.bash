cat $root_dir/task.bash

$RAKUBIN -v

cat $root_dir/test.raku

$RAKUBIN --doc=Text $root_dir/test.raku
