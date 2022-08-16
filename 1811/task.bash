set -e

$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku
say ^Inf .list.perl
HERE

$RAKUBIN $cache_dir/code.raku
