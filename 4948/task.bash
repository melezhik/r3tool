cat $root_dir/task.bash

$RAKUBIN -v

$RAKUBIN -e '

class A does Positional does Sequence {
    has $.a = 42.Int;
    method iterator { }
}.new;

say "I am ok";
'
