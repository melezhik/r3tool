#!bash

cat $root_dir/task.bash

$RAKUBIN -v


cat << 'HERE' | $RAKUBIN  --repl-mode=interactive
my $data = q:to/END/;
This is some
multi-line
data.
END
HERE

