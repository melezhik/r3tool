set -e

$RAKUBIN -v

cat  << 'HERE' | $RAKUBIN --repl-mode=interactive 2>&1
my $data := Map.new('key_1', Map.new('subkey_1','subval_1','subkey_2','subval_2'));
$data.keys
HERE

