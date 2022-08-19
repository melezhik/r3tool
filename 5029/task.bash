set -e

$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku
sub (\ is readonly) { }(1)
HERE

#
$RAKUBIN $cache_dir/code.raku
