cat $root_dir/task.bash

$RAKUBIN -v

echo "repl >>>"

cat  << 'HERE' | $RAKUBIN --repl-mode=interactive
my $p = start { say 1 / 0 };
sink $p;
say 'done';
HERE

echo "<<<"

echo "as_script >>>"

cat  << 'HERE' | $RAKUBIN --repl-mode=non-interactive
my $p = start { say 1 / 0 };
sink $p;
say 'done';
HERE

echo "<<<"
