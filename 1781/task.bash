set -e

$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku
multi sub a() { 
  dd callframe(2).my
};
a;
a;
a
HERE

$RAKUBIN $cache_dir/code.raku 2>&1
