set -e

$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku

my token inQuote { \' (.*?) \' };
say "'Hello World'" ~~ / <inQuote> /; # Nil

HERE

$RAKUBIN $cache_dir/code.raku
