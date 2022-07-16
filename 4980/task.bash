cat $root_dir/task.bash

$RAKUBIN -v

cat << 'HERE' > $cache_dir/task.raku

subset Boo of Int; # where * > 0;  
sub foo() returns Boo { 42 }
say foo();

HERE

timeout 3 $RAKUBIN $cache_dir/task.raku
