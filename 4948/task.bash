
$RAKUBIN -v

cat << 'HERE' >$cache_dir/code.raku
class A does Positional does Sequence {
    has $.a = 42.Int;
    method iterator { }
}.new;
say "I am ok";
HERE


$RAKUBIN $cache_dir/code.raku 
