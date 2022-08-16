
$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku

say "OK1";

class A does Positional does Sequence {
    has $.a = 42.Int;
    method iterator { }
}.new;

say "OK2";

HERE


$RAKUBIN $cache_dir/code.raku 
