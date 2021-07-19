cat $root_dir/task.bash

$RAKUBIN -v

cat << 'HERE' > $cache_root_dir/code.raku
    use v6.e.PREVIEW;
    my \a = $(42);
    say a;  # 42
    a = 666;
    say "[", a, "]";  # 666
HERE

$RAKUBIN $cache_root_dir/code.raku

