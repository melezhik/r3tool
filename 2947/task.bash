cat $root_dir/task.bash

$RAKUBIN -v

cat  << 'HERE' | $RAKUBIN --repl-mode=interactive 2>&1
my $p = start { say 1 / 0 };
sink $p;
say 'done';
HERE


