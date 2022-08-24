set -e

$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku

sub MAIN(|c) { say c };

my %*SUB-MAIN-OPTS=:allow-no

HERE

$RAKUBIN $cache_dir/code.raku --no-foo
