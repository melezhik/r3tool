cat $root_dir/task.bash

$RAKUBIN -v

time $RAKUBIN -e 'my $txt = slurp "/usr/share/dict/words"; for (1..10) { my (@m) = $txt.grep( { m:i/ <!after i> e / } ) }'
