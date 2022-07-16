cat $root_dir/task.bash

$RAKUBIN -v

$RAKUBIN -e 'use v6.*; dd (^20).snip( |^Inf .map: { * * 5 > * } )' 2>&1
