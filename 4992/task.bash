set -e

$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku
class A {

}

class C {
    has A() $.attr is required;
}

my $c4 = C.new: attr => 42;
HERE

$RAKUBIN $cache_dir/code.raku
