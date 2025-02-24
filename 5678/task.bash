set -e

$RAKUBIN -v

cat  << 'HERE' | $RAKUBIN --repl-mode=interactive

# broken code here

HERE

