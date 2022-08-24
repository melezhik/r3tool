set -e

$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku
my class Foo {
    my int $next-index = 0;
    has Int:D $.index = $next-index++;
}

BEGIN say Foo.new.index for ^3;
HERE

$RAKUBIN $cache_dir/code.raku
