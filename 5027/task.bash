set -e

$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku
my (Map \foo) = Map.new;
foo{1};
HERE

$RAKUBIN $cache_dir/code.raku
