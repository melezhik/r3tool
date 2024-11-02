set -e

$RAKUBIN -v

cat  << 'HERE' | $RAKUBIN --repl-mode=interactive
my $s = "foobar";
$s.substr-rw(6, 0) = "yyy"; 
"[", $s, "]"
HERE

