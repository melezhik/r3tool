set -e

$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku

my @options = <a b>;
my $junction = any(@options);
"a"  ~~ /$junction/;

HERE

$RAKUBIN $cache_dir/code.raku
