set -e


$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku

use v6.e.PREVIEW;

say "[",nano, "]";

HERE

$RAKUBIN $cache_dir/code.raku 2>&1

