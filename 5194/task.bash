set -e

$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku

my ($f, $f-next) := (0, 1);

($f, $f-next) := ($f-next, $f + $f-next);

say $f, $f-next;

HERE

$RAKUBIN $cache_dir/code.raku
