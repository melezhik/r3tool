set -e

cat $root_dir/task.bash

$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku

say "[", DateTime(Str).ACCEPTS(True), "]"

HERE

$RAKUBIN $cache_dir/code.raku

