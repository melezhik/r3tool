set -e

$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku

my %m = 0,1;

my &f = {%m{$_}//=$_+f($_-1)};

.say for map 1/*.&f , ^250

HERE

$RAKUBIN $cache_dir/code.raku
