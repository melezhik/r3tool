cat $root_dir/task.bash

$RAKUBIN -v

timeout 10 $RAKUBIN -e 'my @a; loop { @a.hyper[0] }'

echo exit_status: [$?]
