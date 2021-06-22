cat $root_dir/task.bash

$RAKUBIN -v

echo .grep 
time $RAKUBIN -e 'my $txt = slurp "/usr/share/dict/words"; for (1..10) { my (@m) = $txt.grep( { m:i/ <!after i> e / } ) }' 2>&1
echo end

echo "grep .contains"
time $RAKUBIN -e 'my $txt = slurp "/usr/share/dict/words"; for (1..10) { my (@m) = $txt.grep( *.contains( /:i <!after i> e / ) ) }' 2>&1
echo end
