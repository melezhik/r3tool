set -e


$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku
'abc' ~~ / [z?]+ /
HERE

timeout 2 $RAKUBIN $cache_dir/code.raku

