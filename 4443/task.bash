#!bash


$RAKUBIN -v


cat << 'HERE' | $RAKUBIN  --repl-mode=interactive
my $data = q:to/END/;
This is some
multi-line
data.
END
say "test ok" if $data;
HERE

