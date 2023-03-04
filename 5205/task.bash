set -e

$RAKUBIN -v

echo -n "==="

cat << 'HERE' > $cache_dir/code.raku

put "[", [+] $(1,2,3);
say "]";

HERE

$RAKUBIN $cache_dir/code.raku

echo -n "==="
