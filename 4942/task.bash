cat $root_dir/task.bash

$RAKUBIN -v

cat << HERE > $cache_root_dir/export-term.rakumod

# export-term.rakumod:
unit module export-term;
constant term:<2pi> is export = 2 * pi;

HERE

cat << HERE > $cache_root_dir/code.raku

# main file:

use export-term;

say export-term::<term:<2pi>>;
2pi;

say "I am ok";

HERE

cd $cache_root_dir 

$RAKUBIN -I . code.raku 2>&1
