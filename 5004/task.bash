set -e


$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku

sub problems($x) { (1 .. 100).roll(10) andthen .map(* + 2) andthen .grep(* %% $x) }; 

say problems(16) # A list of values that were divisible by 16

HERE

$RAKUBIN $cache_dir/code.raku

