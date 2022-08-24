set -e

$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku
my \v1 = 42;
say v1;  # 42
say v2;  # v2
HERE

$RAKUBIN $cache_dir/code.raku
