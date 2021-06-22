cat $root_dir/task.bash

$RAKUBIN -v

$RAKUBIN -e 'my $txt = slurp "/usr/share/dict/words"; $txt.grep( /:i <!after i> e / ) for 1..1000; say now - INIT now' 

