
$RAKUBIN -v


cat << 'HERE' > $cache_dir/code.raku

say (3,1,4).first;
say (3,1,4).last;

HERE

$RAKUBIN $cache_dir/code.raku 2>&1
