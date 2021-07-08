cat $root_dir/task.bash

$RAKUBIN -v

cat  << 'HERE' | $RAKUBIN --repl-mode=interactive 2>&1
my $a
$a := 42
HERE

