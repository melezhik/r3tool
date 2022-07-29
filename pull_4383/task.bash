
$RAKUBIN -v

#$RAKUBIN -e 'my $txt = slurp "/usr/share/dict/words"; $txt.grep( /:i <!after i> e / ) for 1..1000; say now - INIT now' 

$RAKUBIN -e 'my $txt = slurp "{@*ARGS[0]}"; $txt.grep( /:i <!after i> e / ) for 1..1000; say now - INIT now' $root_dir/words

