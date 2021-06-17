cat $root_dir/task.bash

raku -e 'sub foo($x is rw) { }; foo(1)' 2>&1
