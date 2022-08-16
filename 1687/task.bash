set -e

$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku

say do loop {
  state $x = 0;
  FIRST Nil;
  last if ++$x > 2;
  $x;
}

HERE

$RAKUBIN $cache_dir/code.raku
