set -e

$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku

'abracadabra'.comb.classify(*)

HERE

$RAKUBIN $cache_dir/code.raku
