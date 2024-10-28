set -e

$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku

say "should not match" unless 'foo' ~~ / :i /; # ｢｣

HERE

$RAKUBIN $cache_dir/code.raku
