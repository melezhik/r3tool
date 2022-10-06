set -e

$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku

my @array[3,3] <== [0..8];

HERE

$RAKUBIN $cache_dir/code.raku 2>&1 || code=$?

echo "exit code: ${code}"


