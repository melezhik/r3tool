set -e

$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku
my $dt = DateTime.now;
say "[", $dt ~~ $dt.clone, "]";
HERE

$RAKUBIN $cache_dir/code.raku
