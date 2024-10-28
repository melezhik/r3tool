set -e

$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku

sub MAIN( $a ) { }

HERE

$RAKUBIN $cache_dir/code.raku 2>&1 || :
