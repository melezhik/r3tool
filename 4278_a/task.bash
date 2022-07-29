set -e


$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku

say "[", DateTime(Str).ACCEPTS(True), "]"

HERE

$RAKUBIN $cache_dir/code.raku

