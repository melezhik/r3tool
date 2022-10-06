set -e

$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku
  sub foo(::T, $a --> T) { $a }
HERE

$RAKUBIN $cache_dir/code.raku
