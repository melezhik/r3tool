cat $root_dir/task.bash

$RAKUBIN -v

timeout 3 $RAKUBIN -e 'my @a = [\+] (0, |(1, 2 ... *)); say "hangs"'
