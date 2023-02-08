set -e

$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku

class Foo is Bag {}

my \a = Foo.new("a") (+) Foo.new("b");

say "isa Foo? ", a.isa(Foo);

HERE

$RAKUBIN $cache_dir/code.raku
