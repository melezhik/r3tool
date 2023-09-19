set -e

$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku

say "A" ~~ / <:General_Category("Lu")> /;
say "A" ~~ / <:General_Category("Uppercase_Letter")> /;

# broken code here

HERE

$RAKUBIN $cache_dir/code.raku
