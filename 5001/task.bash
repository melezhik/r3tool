set -e

cat $root_dir/task.bash

$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku

my $dt = DateTime.now;
say "[", $dt ~~ $dt.clone, "]";
# False


HERE

$RAKUBIN $cache_dir/code.raku
