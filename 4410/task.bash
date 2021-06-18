cat $root_dir/task.bash

$raku -v

timeout 30 $raku -e 'my @a; loop { @a.hyper[0] }'

echo exit_status: [$?]
