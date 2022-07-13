cat $root_dir/task.bash

$RAKUBIN -v

$RAKUBIN -e '

sub MAIN( Str :$dir where { .so && .IO.d // warn "Specify the directory [$dir]" } ) {
    say $dir;
}

' 2>&1
