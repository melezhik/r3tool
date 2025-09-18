set -e

$RAKUBIN -v

cat  << 'HERE' | $RAKUBIN
module M { enum E is export <F G> }
import M;
sub foo (E $f, E :$g) { ... };
HERE

