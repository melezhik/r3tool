set -e

$RAKUBIN -v

cat  << 'HERE' | $RAKUBIN --repl-mode=interactive
<one two three four>.sort(:k)
<one two three four>.map(&lc).sort(:k)
<one two three four>.map(&lc).List.sort(:k)
HERE

