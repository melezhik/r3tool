
$RAKUBIN -v

cat << 'HERE' > $cache_root_dir/code.raku

my @a = 1..10;
my $b;

@a ==> hyper() ==> grep(*.is-prime) ==> sum() ==> $b;

HERE

$RAKUBIN $cache_root_dir/code.raku 2>&1
