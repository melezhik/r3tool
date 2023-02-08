set -e

$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku

react { whenever $*IN.Supply.lines { say $_ } }


HERE

#timeout 5 bash -c "echo 'OK' | $RAKUBIN $cache_dir/code.raku"

timeout 3 bash -c '(echo OK; sleep 20) | $RAKUBIN $cache_dir/code.raku'
