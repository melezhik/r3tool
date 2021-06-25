cat $root_dir/task.bash

$RAKUBIN -v

$RAKUBIN -e 'put ("a" .. "zz")[*]; say "time: ", now - INIT now';
