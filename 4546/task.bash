set -e


$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku

say "[", 12.500000000000002.round(1e-5), "]";

HERE

$RAKUBIN $cache_dir/code.raku

