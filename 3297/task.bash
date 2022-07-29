
$RAKUBIN -v

cat  << 'HERE' | $RAKUBIN --repl-mode=interactive 2>&1
my $a = 0;
my $b = 1;
$a := $b;
say "done";
HERE

