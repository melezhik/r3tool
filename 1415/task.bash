set -e

$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku

BEGIN {}; { for ^10000_000 { }; say "[", (now - ENTER now), "]" }

HERE

$RAKUBIN $cache_dir/code.raku
