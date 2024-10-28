
$RAKUBIN -v

cat  << 'HERE' | $RAKUBIN --repl-mode=interactive 2>&1
start die "foo"; 42
HERE


