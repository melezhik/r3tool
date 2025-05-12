set -e

$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku

my sub word-bytes(Int:D $word --> List:D[Int]) { }

HERE

$RAKUBIN --ll-exception $cache_dir/code.raku
