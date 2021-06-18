set -x

echo ">>>"
$RAKUBIN -e 'enum Foo <Bar Baz>; sub foo(Foo(Str) $foo) { dd $foo }; foo("Bar")' 2>&1
echo ">>>"

echo
