cat $root_dir/task.bash

$RAKUBIN -v

time $RAKUBIN -e 'my $txt = slurp "/usr/share/dict/words"; $txt.grep( { m:i/ <!after i> e / } ) for 1..1000'
