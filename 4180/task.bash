set -e

$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku
say $*KERNEL.signals
HERE

$RAKUBIN $cache_dir/code.raku
