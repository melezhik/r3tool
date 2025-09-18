set -e

$RAKUBIN -v

cat  << 'HERE' | $RAKUBIN --repl-mode=interactive
module M { enum E is export <F G> }
import M;
sub MAIN (E $f, E :$g) { ... };
exit;
HERE

