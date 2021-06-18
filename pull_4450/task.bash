cat $root_dir/task.bash

$RAKUBIN -v

$RAKUBIN -e 'say ^10 .map: { $_ == 5 ?? last(42) !! $_ }'
